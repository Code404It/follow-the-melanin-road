class Scraper

    THRILLIST_URL ="https://www.thrillist.com/drink/nation/black-owned-breweries-us"
    
    
    def self.scrape_thrillist(input)
        html = open(THRILLIST_URL)
        doc = Nokogiri::HTML(html)
        if input == 1 
            brewery = 11
        elsif input == 2
            brewery = 12
        end 
         doc.css("[data-page-element-index]")[brewery].css("p").each do |brewery|

            url = brewery.css("a").attr("href").value
            name = brewery.css("strong").text
            location = brewery.css("em").text
            Brewery.new(url, name, location)
         end

     end 

end 

