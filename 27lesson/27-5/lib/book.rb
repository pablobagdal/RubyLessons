# encoding: utf-8
#
# Класс Книга

require_relative 'product.rb'

class Book < Product
  attr_accessor :name, :genre, :author

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8', chomp: true)

    self.new(
      name: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super

    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def info
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{@price} руб."
  end

  def to_s
    "#{info} (осталось #{@amount}) "
  end

  def update(params)
    super

    @name = params[:name] if params[:name]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end
end
