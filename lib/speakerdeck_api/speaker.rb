module SpeakerdeckApi

  class Speaker
    def self.get(speaker_name)
      if speaker_name.match(/ferperales/)
        SpeakerdeckApi::Speaker.new
      else
        raise SpeakerdeckApi::Exceptions::SpeakerNotFoundException, "Couldn't find any speaker named #{speaker_name}"
      end
    end
  end

end
