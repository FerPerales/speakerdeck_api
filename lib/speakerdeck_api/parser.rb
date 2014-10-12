module SpeakerdeckApi
  class Parser

    def get_speaker_details(speaker_html)
      info = {}
      info[:number_of_talks] = speaker_html.css('.talk.public').size
      info
    end
  end
end
