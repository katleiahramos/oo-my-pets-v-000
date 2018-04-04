class Owner
  attr_accessor :name, :owners, :owners_count

  @@owners = []
  @@owners_count = 0
  
  def initialize(name)
    @name = name
    @@owners << self
    @@owners_count += 1
  end

end
