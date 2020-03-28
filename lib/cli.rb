class CLI
    
    def call 
        
        puts "Thank you for following the Melanin Road!"
            
        pick_region
        pick_a_brewery
        say_good_bye

    end
    
    def pick_region
        puts "Which region are you traveling to?"
        puts "Please choose a number:"
        puts "1. East"
        puts "2. West"
        input = gets.strip.to_i

        if input == 1 
            Scraper.scrape_thrillist_east
            Brewery.list
        elsif input == 2
            Scraper.scrape_thrillist_west 
            Brewery.list
    else
        puts "You drunk dialed! Please choose a number."
        pick_region
        
    end 


    def pick_a_brewery
        puts "Pick a brewery:"
        input = gets.strip.to_i
        if input < Brewery.all.length 
            brewery = Brewery.all[input -1]
            puts "#{brewery.name}, #{brewery.url}, #{brewery.location}"
        else 
            puts "You drunk dialed! Please choose a number." 
            pick_a_brewery
            say_good_bye
        end
    end 

    
end 
    def say_good_bye
        puts "Diversity is NOTHING without inclusion. Thanks for following THE MELANIN ROAD!"
    end
end