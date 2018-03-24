require_relative '../spec_helper'

RSpec.describe Lastfmiefy::Client::Response do
  subject { Lastfmiefy::Client::Response }

  context '@@class methods' do
    it { is_expected.to respond_to(:parsed_response) }
  end

  context '@@parsed_response' do
    let!(:response) { double(:response, :body => '{ "name":"John", "age":30, "city":"New York"}') }
    describe 'method arguments' do
      before do
        expect(subject).to receive(:parsed_response).with(response)
      end

      it 'is expected to have 1 argument' do
        subject.parsed_response(response)
      end
    end

    describe 'method return value' do
      it 'is expected to have parsed to json' do
        expect(subject.parsed_response(response)).to be_kind_of(Hash)
      end
    end
  end
end