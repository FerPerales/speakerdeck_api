require 'spec_helper'

module SpeakerdeckApi
  describe Speaker do

    let!(:subject) { SpeakerdeckApi::Speaker }

    describe '.get' do

      context 'with invalid username' do

        it 'throws a SpeakerNotFoundException' do
          expect { subject.get('fake123') }.to raise_error(SpeakerdeckApi::Exceptions::SpeakerNotFoundException)
        end

      end

      context 'with a valid username' do

        it 'returns a SpeakerdeckApi::Speaker object' do
          expect(subject.get('ferperales')).to be_a SpeakerdeckApi::Speaker
        end

        it 'contains the number_of_talks attribute' do
          expect(subject.get('ferperales')).to respond_to :number_of_talks
        end

        it 'contains the correct number of talks' do
          expect(subject.get('ferperales').number_of_talks).to eql 14
        end

        it 'contains the name attribute' do
          expect(subject.get('ferperales')).to respond_to :name
        end

        it 'contains the correct name number' do
          expect(subject.get('ferperales').name).to eql 'Fernando Perales'
        end

        it 'contains the website attribute' do
          expect(subject.get('ferperales')).to respond_to :website
        end

        it 'contains the correct website number' do
          expect(subject.get('ferperales').website).to eql 'http://ferperales.net/'
        end

      end
    end
  end
end
