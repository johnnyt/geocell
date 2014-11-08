module Geocell
  class Cell
    attr_reader :char, :parent, :kids

    # See ruby_engines/#{RUBY_ENGINE}.rb
    def self.initialize_store; end
    def self.root; end

    def self.[](hash_string)
      root[hash_string]
    end

    def initialize(parent=nil, char='')
      @parent, @char = parent, char
    end

    def kids
      @kids ||= Hash.new
    end

    def [](hash_string)
      return self if hash_string.nil? || hash_string == ''
      lookup = hash_string.slice! 0
      kids.key?(lookup) ?
        kids[lookup][hash_string] :
        nil
    end

    def geohash
      (parent.nil? ? '' : parent.geohash) + char
    end

    def inspect
      "#<Geocell @char=#{char} @geohash=#{geohash}>"
    end
    Geocell::Cell.initialize_store
  end
end
