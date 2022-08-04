# encoding: utf-8
#
# Класс Фильм

require_relative 'product.rb'

class Disc < Product
  attr_accessor :title, :singer, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8', chomp: true)

    self.new(
      title: lines[0],
      singer: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @year = params[:year]
    @singer = params[:singer]
  end

  def info
    "Альбом «#{@title}», #{@year}, исп. #{@singer}, #{@price} руб."
  end

  def to_s
    "#{info} (осталось #{@amount}) "
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @year = params[:year].to_i if params[:year]
    @singer = params[:singer] if params[:singer]
  end
end
