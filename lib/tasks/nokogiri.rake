desc "Scraping for links"
task :scrape_rob => :environment do 

  require 'nokogiri'
  require 'open-uri'

  Page.find_all_links(nil).each do |link|
  url = "http://www.softwarebyrob.com/archives/"
  doc = nokogiri::HTML(open(url))
  doc.css("ul:nth-child(4) a").each do |item|
    title = item.at_css("li:nth-child(1) a").text
    address = item.at_css("li:nth-child(1) a")[:href]
    page.update_attribute(:title, title)
    page.update_attribute(:address, address)
  end  
end
