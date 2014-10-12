require 'nokogiri'
require 'open-uri'

module SpeakerdeckApi
  class Connection

    BASE_URL = 'https://speakerdeck.com/'

    def get_speaker_data(speaker_name)
      url = url_for_speaker speaker_name
      get_data(url)
    end

    def url_for_speaker(speaker_name)
      BASE_URL + speaker_name
    end



    private

    def get_data(url)
      Nokogiri::HTML(open(url))
    end

  end

end
