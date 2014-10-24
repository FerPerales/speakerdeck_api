require 'spec_helper'

module SpeakerdeckApi
  describe Parser do

    context 'speakers' do
      describe '.get_speaker_details' do
        context 'valid speaker with complete info' do

          let(:speaker_profile_page) do
            VCR.use_cassette('speaker_profile_with_complete_info') do
              Nokogiri::HTML(open('https://speakerdeck.com/ferperales'))
            end
          end


          it 'contains the number_of_talks key and correct value' do
            expect(subject.get_speaker_details(speaker_profile_page).values_at(:number_of_talks)).to eql([14])
          end

          it 'contains the name key and correct value' do
            expect(subject.get_speaker_details(speaker_profile_page).values_at(:name)).to eql(["Fernando Perales"])
          end

          it 'contains the website key and correct value' do
            expect(subject.get_speaker_details(speaker_profile_page)).to have_key(:website)
          end

          it 'contains the right value' do
            expect(subject.get_speaker_details(speaker_profile_page).values_at(:website)).to eql(["http://ferperales.net/"])
          end

        end

        context 'valid speaker with no info' do

          let(:speaker_without_info) do
            VCR.use_cassette('speaker_profile_without_info') do
              Nokogiri::HTML(open('https://speakerdeck.com/sferik'))
            end
          end

          it 'contains the name key and correct value' do
            expect(subject.get_speaker_details(speaker_without_info).values_at(:name)).to eql(["Erik Michaels-Ober"])
          end

          it 'contains the "website" key as empty string' do
            expect(subject.get_speaker_details(speaker_without_info).values_at(:website)).to eql([""])
          end
        end
      end
    end
  end
end
