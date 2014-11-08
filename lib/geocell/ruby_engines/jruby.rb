module Geocell
  class Cell
    def self.initialize_store
      @@root ||= Hash.new
      nil
    end

    def self.root
      @@root
    end
  end
end
