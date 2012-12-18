module Playlister
  class Track
    attr_accessor :title, :artist, :album

    def initialize(title, artist)
      self.title = title
      self.artist = artist
    end

    def to_s
      [self.artist, self.title].join(" - ")
    end
  end
end