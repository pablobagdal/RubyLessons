class Film
 attr_reader :name, :director, :year

 def initialize(name, director, year)
  @name = name
  @director = director
  @year = year.to_i
  end
  def to_s
    return "#{@director} - #{@name} (#{@year})"
  end
end
