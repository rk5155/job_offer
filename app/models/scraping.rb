# require 'mechanize'

class Scraping < ApplicationRecord
    mount_uploader :image, ImageUploader

    is_impressionable
    
    # rails c で Scraping.scrape を実行すればScrapingデータベースに保存できる
    def self.scrape
        agent = Mechanize.new

        
        #getの引数はサイトのURL
        1.times do |count|
          page = agent.get("https://tenshoku.mynavi.jp/list/pg#{count + 1}/")

          page.css(".cassetteRecruit__bottom a").each do |ele|
          
            scraping = Scraping.new
  
            url = ele[:href]
            scraping.url = "https://tenshoku.mynavi.jp" + url
            # 一覧ページから、格詳細ページへ移動
            details_page = page.link_with(href: url).click

            #取得したい要素
            title = details_page.search('.occName')
            scraping.title = title.inner_text.gsub(" ", "")  

            company_name = details_page.search('.companyName')
            scraping.name = company_name.inner_text.gsub(" ", "")  

            content = details_page.search('.jobPointArea__wrap-jobDescription')
            scraping.content = content.inner_text.gsub(" ", "")  

            target = details_page.search('.jobPointArea__body--large')
            scraping.target = target.inner_text.gsub(" ", "")  
            
            
            details_page.css(".jobOfferTable__head").each do |ele|
              essentials_title = ele.text
  
              if essentials_title === "雇用形態"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.status = text
  
              elsif essentials_title === "勤務時間"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.time = text
  
              elsif essentials_title === "勤務地"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.location = text
  
              elsif essentials_title === "給与"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.salary = text
  
              elsif essentials_title === "昇給・賞与"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.bonus = text
  
              elsif essentials_title === "諸手当"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.allowance = text
  
              elsif essentials_title === "休日・休暇"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.holiday = text
  
              elsif essentials_title === "福利厚生"
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.welfare = text
  
              else
                text = ele.next.next.inner_text.gsub(" ", "")  
                scraping.other = text
                
              end
            end
  
            # Scrapingテーブルへ保存
            
            scraping.save
          end
  
        end
        
        

    end

end
