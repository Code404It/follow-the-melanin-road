class Scraper

    THRILLIST_URL ="https://www.thrillist.com/drink/nation/black-owned-breweries-us"
    
    
    def self.scrape_thrillist_east
        html = open(THRILLIST_URL)
        doc = Nokogiri::HTML(html)
    doc.css("[data-page-element-index]")[11].css("p").each do |brewery|

        url = brewery.css("a").attr("href").value
        name = brewery.css("strong").text
        location = brewery.css("em").text
        Brewery.new(url, name, location)
    end

end 


  def self.scrape_thrillist_west
    html = open(THRILLIST_URL)
    doc = Nokogiri::HTML(html)
doc.css("[data-page-element-index]")[12].css("p").each do |brewery|
     url = brewery.css("a").attr("href").value
     name = brewery.css("a").text
     location = brewery.css("em").text
        Brewery.new(url, name, location)
    end 
end

    

end 

