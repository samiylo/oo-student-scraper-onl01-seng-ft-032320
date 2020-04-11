require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = Nokogiri::HTML(open(index_url)) # Grabs the HTML 
    html.css(".student-card").collect do |student|
      hash = {
        name: student.css("h")
      }
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

