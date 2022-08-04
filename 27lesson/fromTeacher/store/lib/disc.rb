# encoding: utf-8

require_relative 'product'

class Disc < Product
  attr_accessor :title, :singer, :genre, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8', chomp: true)

    self.new(
      title: lines[0],
      singer: lines[1],
      genre: lines[2],
      year: lines[3],
      price: lines[4],
      amount: lines[5]
    )
  end

  def initialize(params)
    super

    @title = params[:title]
    @singer = params[:singer]
    @genre = params[:genre]
    @year = params[:year].to_i
  end

  def info
    "Альбом #{@singer} — «#{@title}», #{@genre}, #{@year}"
  end

  def update(params)
    super

    @title = params[:title] if params[:title]
    @singer = params[:singer] if params[:singer]
    @genre = params[:genre] if params[:genre]
    @year = params[:year].to_i if params[:year]
  end
end
