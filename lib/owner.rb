require 'pry'

class Owner
  attr_accessor :name, :all, :owners_count
  attr_reader :species

  @@all = []
  @@owners_count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@owners_count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@owners_count = 0
  end

  def self.count
    #binding.pry
    @@owners_count
  end

  def say_species
    "I am a #{@species}."
  end 


end
