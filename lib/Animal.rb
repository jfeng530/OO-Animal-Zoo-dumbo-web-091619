class Animal

	attr_reader :nickname, :species, :zoo
	attr_accessor :weight

	@@all = []

	def initialize(nickname, species, weight, zoo)
		@nickname = nickname
		@species = species
		@weight = weight
		@zoo = zoo
		@@all << self
	end

    def self.find_by_species(speci)
        Animal.all.select {|animals| animals.species == speci }
    end

	def self.all
		@@all
	end

end