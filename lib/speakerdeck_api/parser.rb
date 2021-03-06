module SpeakerdeckApi
  class Parser

    def get_speaker_details(speaker_html)
      info = {}
      info[:number_of_talks] = speaker_html.css('.talk.public').size
      info[:name] = speaker_html.css('.sidebar > h2').text
      website = speaker_html.css('.bio > p > a')
      info[:website] = website.empty? ? '' : website.attribute('href').value
      info
    end
  end
end
