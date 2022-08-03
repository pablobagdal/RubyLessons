#
# класс Диск

require_relative 'product.rb'

class Disc < Product
  attr_accessor :year, :genre, :author, :title

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8', chomp: true)

    self.new(
      title: lines[0],
      author: lines[1],
      genre: lines[2],
      year: lines[3].to_i,
      price: lines[4].to_i,
      amount: lines[5].to_i
    )
  end

  def initialize(params)
    super

    @year = params[:year].to_i
    @genre = params[:genre]
    @author = params[:author]
    @title = params[:title]
  end

  def to_s
    "Альбом #{@author} — «#{@title}», #{@genre}, #{@year}, #{@price} руб. (осталось #{@amount})"
  end

  def update(params)
    super

    @year = params[:year].to_i if params[:year]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
    @title = params[:title] if params[:title]
  end
end
