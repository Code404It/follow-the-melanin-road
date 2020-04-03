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
        puts "Let's ease on down the road! Pick another number:"
        input = gets.strip.to_i
        if input.to_i.between?(1,Brewery.all.length)
            new_input = input.to_i-1
            brewery = Brewery.all[new_input]
            puts "#{brewery.name}, #{brewery.location}, #{brewery.url}"
        else 
            puts "Friends don't let friends drunk dial! Please choose a number." 
            pick_a_brewery
            say_good_bye
        end
    end 

    
end 
    def say_good_bye
        puts "Diversity is NOTHING without inclusion."
        puts "Thank you again for following the Melanin Road!"
    end
end