class Owner
  attr_accessor :name, :all, :owners_count

  @@all = []
  @@owners_count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@owners_count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@owners_count
  end 


end
