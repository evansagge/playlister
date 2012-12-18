require "playlister/version"
require "playlister/songlist"
require "playlister/track"
require "pp"

module Playlister
  # Your code goes here...
end

songlist = Playlister::Songlist.from_file(File.absolute_path(ARGV[0]))

pp songlist