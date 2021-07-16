# require 'mechanize'

class Scraping < ApplicationRecord
    # rails c で Scraping.scrape を実行すればScrapingデータベースに保存できる
    def self.scrape
        agent = Mechanize.new

        
        #getの引数はサイトのURL
        3.times do |count|
          page = agent.get("https://tenshoku.mynavi.jp/list/pg#{count + 1}/")

          page.css(".cassetteRecruit__bottom a").each do |ele|
          
            scraping = Scraping.new
  
            url = ele[:href]
            scraping.url = "https://tenshoku.mynavi.jp" + url
            # 一覧ページから、格詳細ページへ移動
            details_page = page.link_with(href: url).click
            #取得したい要素
            title = details_page.search('.occName')
            scraping.name = title.inner_text
            
            details_page.css(".jobOfferTable__head").each do |ele|
              essentials_title = ele.text
  
              if essentials_title === "雇用形態"
                text = ele.next.next.inner_text
                scraping.status = text
  
              elsif essentials_title === "勤務時間"
                text = ele.next.next.inner_text
                scraping.time = text
  
              elsif essentials_title === "勤務地"
                text = ele.next.next.inner_text
                scraping.location = text
  
              elsif essentials_title === "給与"
                text = ele.next.next.inner_text
                scraping.salary = text
  
              elsif essentials_title === "昇給・賞与"
                text = ele.next.next.inner_text
                scraping.bonus = text
  
              elsif essentials_title === "諸手当"
                text = ele.next.next.inner_text
                scraping.allowance = text
  
              elsif essentials_title === "休日・休暇"
                text = ele.next.next.inner_text
                scraping.holiday = text
  
              elsif essentials_title === "福利厚生"
                text = ele.next.next.inner_text
                scraping.welfare = text
  
              else
                text = ele.next.next.inner_text
                scraping.other = text
                
              end
            end
  
            # Scrapingテーブルへ保存
            
            scraping.save
          end
  
        end
        
        

    end

    def self.search(title, status, location)
      # 全項目空欄で検索を押した時
      if status == "" && title == "" && location == ""
        Scraping.all
      # titleのみ空欄
      elsif status == "" && title != "" && location == ""
        Scraping.where(['name LIKE ?', "%#{title}%"]).where(['location LIKE ?', "%#{location}%"])
      # 雇用形態のみ空欄
      elsif status != "" && title == "" && location == ""
        Scraping.where(['status LIKE ?', "%#{status}%"]).where(['location LIKE ?', "%#{location}%"])
      # 都道府県以外空欄
      elsif status == "" && title == "" && location != ""
        # Scraping.where(['status LIKE ?', "%#{status}%"]).where(['title LIKE ?', "%#{title}%"])
        Scraping.where(['location LIKE ?', "%#{location}%"])
      # 全項目が入力されている
      else
        Scraping.where(['name LIKE ?', "%#{title}%"]).where(['status LIKE ?', "%#{status}%"]).where(['location LIKE ?', "%#{location}%"])
      end
    end
end
