require 'pry'

class Cat
    attr_accessor :mood
    attr_reader :owner, :name

    @@all = []

    def initialize (name, owner, mood = "nervous")
      @name = name
      @owner = owner
      @mood = mood
      @@all << self
    end

    def owner=(owner)
      @owner = owner
    end

    def self.all
      @@all
    end

  end