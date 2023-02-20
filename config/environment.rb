require 'bundler'
Bundler.require

require_relative '../lib/song'

DB = { conn: SQLite3::Database.new("db/music.db") }


# 
hello = Song.new(name: "Hello", album: "25")
# => #<Song:0x00007fed21935128 @album="25", @id=nil, @name="Hello">
hello.save
# => []
ninety_nine_problems = Song.new(name: "99 Problems", album: "The Black Album")
# => #<Song:0x00007fed218c6200 @album="The Black Album", @id=nil, @name="99 Problems">
ninety_nine_problems.save
# => []