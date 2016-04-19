require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.softwarebyrob.com/archives/"
doc = nokogiri::HTML(open(url))
puts doc.at_css("title").text

doc.css("ul:nth-child(4) a").each do |item|
  puts item.at_css(".prodLink").text
end

