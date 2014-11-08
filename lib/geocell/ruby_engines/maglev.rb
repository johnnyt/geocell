module Geocell
  class Cell
    ROOT_KEY = :geocell_root

    def self.initialize_store
      Maglev[ROOT_KEY] ||= self.new
      nil
    end

    def self.root
      Maglev[ROOT_KEY]
    end
  end
end
