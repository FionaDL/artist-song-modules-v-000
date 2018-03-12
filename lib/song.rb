require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  extend Memorable, Findable, Paramable

  def initialize
    @@songs << self
  end


  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
