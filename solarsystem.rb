class System
  attr_reader :bodies, :total_mass, :method_name, :name, :mass
  @@bodies = []

  # def initialize
  #   @@bodies = []
  #   add
  # end
  def all
    @@bodies
  end

  def add(x)
    #celestial body to the list
    @@bodies << x

  end

  def total_mass
    # mass of all the bodies
    @total_mass = 0
    @@bodies.each do |body|
      @total_mass += body.mass
    end
    @total_mass
  end

  def method_name
    @@bodies.each do |body|
    @method_name = body.name
    puts "#{@method_name}"
    end
  end

end

class Body
  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name
    @mass = mass

  end

end

class Planet < Body
  attr_accessor :day, :year

  def initialize(name, mass)
    super(name, mass)
    @day = 24
    @year = 0.99

  end

end


class Star < Body
  attr_reader :type, :planet

  def initialize(name, mass)
    super(name, mass)
    @type = "G"
  end
end

class Moon < Body
  attr_reader :month, :planet

  def initialize(name, mass)
    super(name, mass)
    @month = 30
    @planet = []
    # @@planet << Planet.new(name, mass)
    # planet(method_name)
  end
  def planet
      @planet << Planet.new(name, mass)
  end
  # def planet_info
  #     @planet << Planet.new(name, mass, day, year)
  #   end

end


p p=Planet.new("Earth", 44)
p s=Star.new("Sun",33)
p m=Moon.new("moon",66)
p m.planet
p m

p sys = System.new
p sys.add(s)
p sys.add(p)
p sys.add(m)
p sys.all
p sys.total_mass
p sys.method_name
