require_relative 'fish.rb'
require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner
  # code goes here
  attr_reader :species, :say_species
  attr_accessor :name,  :pets, :reset_all

      @@instances = []

  def initialize(species)
    # @owner = owner
    @species = species
    @say_species = say_species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@instances << self
  end

   def say_species
     "I am a #{species}."
   end
  #  # #
   def buy_fish(name)
     @pets[:fishes] << Fish.new(name)
   end

   def buy_cat(name)
     @pets[:cats] << Cat.new(name)
   end

   def buy_dog(name)
     @pets[:dogs] << Dog.new(name)
   end

   def walk_dogs
    @pets[:dogs].each { |dog|
      dog.mood = "happy"
    }
   end

   def play_with_cats
    @pets[:cats].each { |cat|
      cat.mood = "happy"
    }
   end

   def feed_fish
    @pets[:fishes].each { |fish|
      fish.mood = "happy"
    }
   end

   def sell_pets
     @pets[:fishes].each { |fish|
       fish.mood = "nervous"
    }
    @pets[:cats].each { |cat|
      cat.mood = "nervous"
    }
    @pets[:dogs].each { |dog|
      dog.mood = "nervous"
    }
    @pets[:fishes] = []
    @pets[:cats] = []
    @pets[:dogs] = []
   end

   def list_pets
     "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
   end

    def self.all
        @@instances
    end

    def self.reset_all
      @@instances = []
    end

    def self.count
      @@instances.length
    end
end
