module SpeakerdeckApi

  class Speaker

    attr_reader :number_of_talks, :name

    def initialize(params = {})
      @number_of_talks = params[:number_of_talks] || 0
      @name = params[:name] || ''
    end

    def self.get(speaker_name)
      begin
        speaker_data = SpeakerdeckApi::Connection.new.get_speaker_data speaker_name
        speaker_details = SpeakerdeckApi::Parser.new.get_speaker_details speaker_data
        SpeakerdeckApi::Speaker.new speaker_details
      rescue
        raise SpeakerdeckApi::Exceptions::SpeakerNotFoundException
      end
    end
  end

end
