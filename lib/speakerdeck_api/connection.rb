require 'nokogiri'
require 'open-uri'

module SpeakerdeckApi
  class Connection

    BASE_URL = 'https://speakerdeck.com/ferperales'

    def self.get_data(url)
      Nokogiri::HTML(open(url))
    end

  end

end
