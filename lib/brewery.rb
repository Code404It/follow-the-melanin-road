class Brewery
    attr_accessor :url, :name, :location

    @@all = []

    def initialize(url, name, location)
        @url = url
        @name = name 
        @location = location 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.list
        all.each.with_index(1) do |brewery, i|
        puts "#{i}. #{brewery.name}"
        end
    end

end
