require 'pry'

class Owner
  attr_accessor :name, :all, :owners_count, :pets
  attr_reader :species

  @@all = []
  @@owners_count = 0
  @@pets = {:fishes => [], :dogs => [], :cats => []}

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

  def pets
    @@pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    binding.pry
    @@pets[:fishes] << fish

  end



end
