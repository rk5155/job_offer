# require 'mechanize'

class Scraping < ApplicationRecord
    # rails c で Scraping.scrape を実行すればScrapingデータベースに保存できる
    def self.scrape
        agent = Mechanize.new
        #getの引数はサイトのURL
        page = agent.get("https://tenshoku.mynavi.jp/list/")
        

        page.css(".cassetteRecruit__bottom a").each do |ele|
          
          scraping = Scraping.new

          url = ele[:href]
          # 一覧ページから、格詳細ページへ移動
          details_page = page.link_with(href: url).click
          #取得したい要素
          title = details_page.search('.occName')
          
          details_page.css(".jobOfferTable__head").each do |ele|
            essentials_title = ele.text

            if essentials_title === "雇用形態"
              status = details_page.search('body > div.wrapper > div.container.container-jobinfo > div.container__inner.lightBlue > div > div.jobPointArea__mainWrap > div.leftBlock.clearfix > table:nth-child(13) > tbody > tr:nth-child(1) > td > div').inner_text
              scraping.status = status
              scraping.save
            end
          end

          # Scrapingテーブルへ保存
          scraping.name = title.inner_text
          scraping.save
        end
    end

    def self.search(title, status)
      
      if status != ""
        if status
          Scraping.where(['status LIKE ?', "%#{status}%"])
        else
          Scraping.all
        end
      else
        if title
          Scraping.where(['name LIKE ?', "%#{title}%"])
        else
          Scraping.all
        end
      end
    end
end
