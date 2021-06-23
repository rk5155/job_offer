# require 'mechanize'

class Scraping < ApplicationRecord
    # rails c で Scraping.scrape を実行すればScrapingデータベースに保存できる
    def self.scrape
        agent = Mechanize.new
        #getの引数はサイトのURL
        page = agent.get("https://tenshoku.mynavi.jp/list/")
        

        page.css(".cassetteRecruit__bottom a").each do |ele|
          url = ele[:href]
          # 一覧ページから、格詳細ページへ移動
          details_page = page.link_with(href: url).click
          #取得したい要素
          title = details_page.search('.occName')
          # Scrapingテーブルへ保存
          scraping = Scraping.new
          scraping.name = title.inner_text
          scraping.save
        end
    end

    def self.search(search_word)
      if search_word
        Scraping.where(['name LIKE ?', "%#{search_word}%"])
      else
        Scraping.all
      end
    end
end
