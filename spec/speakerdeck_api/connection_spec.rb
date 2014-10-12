require 'spec_helper'

module SpeakerdeckApi
  describe Connection do

    let(:subject) { SpeakerdeckApi::Connection }
    let(:valid_url) { 'https://speakerdeck.com/ferperales' }
    let(:invalid_url) { 'https://speakerdeck.com/jondoe' }

    it 'has a base URL' do
      expect(subject::BASE_URL).to match(/https\:\/\/speakerdeck.com/)
    end

    describe '.get_data' do
      context 'with valid url' do
        it 'returns a parseable object' do
          expect(subject::get_data(valid_url)).to_not be_nil
        end

      end

      context 'with invalid url' do
        it 'raises a OpenURI::HTTPError' do
          expect { subject::get_data(invalid_url)}.to raise_error OpenURI::HTTPError
        end
      end

    end
  end
end
