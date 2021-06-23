# require 'mechanize'

class Scraping < ApplicationRecord
    # rails c で Scraping.scrape を実行すればScrapingデータベースに保存できる
    def self.scrape
        agent = Mechanize.new                  #agentは任意の変数
        page = agent.get("https://tenshoku.mynavi.jp/list/")  #getの引数はサイトのURL
        elements = page.search('h3') #取得したい要素

        elements.each do |element|
          scraping = Scraping.new                      #Fishは任意のクラス、fishは任意のインスタンス
          scraping.name = element.inner_text
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
