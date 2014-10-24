require 'spec_helper'

module SpeakerdeckApi
  describe Connection do

    let(:valid_speaker) { 'ferperales' }
    let(:invalid_speaker) { 'fake123' }
    let(:subject) { SpeakerdeckApi::Connection }

    it 'has a base URL' do
      expect(subject::BASE_URL).to be_eql('https://speakerdeck.com/')
    end

    describe '.get_speaker_data' do
      context 'with valid url' do
        it 'returns a parseable object' do
          VCR.use_cassette('speaker_profile_with_complete_info') do
            expect(subject.new.get_speaker_data(valid_speaker)).to be_a Nokogiri::HTML::Document
          end
        end

      end

      context 'with invalid url' do
        it 'raises a OpenURI::HTTPError' do
          VCR.use_cassette('invalid_speaker') do
            expect { subject.new.get_speaker_data(invalid_speaker)}.to raise_error OpenURI::HTTPError
          end
        end
      end
    end


    describe '.url_for_speaker' do
      it 'returns the correct URL' do
        VCR.use_cassette('speaker_profile_with_complete_info') do
          expect(subject.new.url_for_speaker('ferperales')).to be_eql('https://speakerdeck.com/ferperales')
        end
      end
    end
  end
end
