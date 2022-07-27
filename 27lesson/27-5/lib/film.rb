# encoding: utf-8
#
# Класс Фильм
class Film < Product
  attr_accessor :name, :year, :director

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |line| line.chomp }

    self.new(
      name: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм «#{@name}», #{@year}, реж. #{@director}, #{@price} руб. (осталось #{@amount}) "
  end

  def update(params)
    super

    @name = params[:name] if params[:name]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end
