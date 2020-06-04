require 'pry'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Owner
  attr_reader :name, :species

  @@all =[]

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
    end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end 

  def self.reset_all
    @@all = []
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end 

  def cats
    Cat.all.select do |name_cat|
      name_cat.owner == self  
    end 
  end

  def dogs
    Dog.all.select do |name_dog|
      name_dog.owner == self  
     end 
    end

  # def 

  def walk_dogs
    self.dogs.each do |mood|
      binding.pry
      mood.mood = "happy"
     end 
  end

  
end