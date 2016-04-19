require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.softwarebyrob.com/archives/"
doc = nokogiri::HTML(open(url))
puts doc.at_css("title").text

doc.css("ul:nth-child(4) a").each do |item|
  title = item.at_css("li:nth-child(1) a").text
  puts "#{title}"
  puts item.at_css("li:nth-child(1) a")[:href]
end

