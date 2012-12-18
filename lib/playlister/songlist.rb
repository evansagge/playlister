module Playlister
  class Songlist < Array
    def self.from_file(filepath)
      songlist = self.new

      File.open(filepath) do |f|
        f.each_line do |line|
          if line =~ /^(\d{1,})\s(.+)\s\-\s(.+)/
            title, artist = $2, $3
            songlist << Track.new(title, artist)
          end
        end
      end

      songlist
    end
  end
end