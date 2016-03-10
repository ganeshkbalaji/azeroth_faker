require 'nokogiri'
require 'open-uri'

module AZEROTHFaker
  class Character
    noko = Nokogiri::HTML(open("http://wowwiki.wikia.com/wiki/Major_characters"))
    @names = noko.search('#mw-content-text > a:odd').map {|name| name.inner_text}

    def self.random_name
      @names.sample
    end

    def self.first_name
      @name = @names.sample.split
      return name[0]
    end

    def self.last_name
      name = @names.sample.split
      while name.length < 1
        name = @names.sample
      end
      return name[-1]
    end
  end
end