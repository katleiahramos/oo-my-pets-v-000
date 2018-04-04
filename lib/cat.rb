class Cat

  attr_writer :name

  def initialize(name)
    @name = name
  end

  def self.name
    @name
  end 


end
