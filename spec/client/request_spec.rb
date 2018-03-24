require_relative '../spec_helper'

RSpec.describe Lastfmiefy::Client::Request do
  subject { Lastfmiefy::Client::Request }

  context '@@class methods' do
    it { is_expected.to respond_to(:base_uri) }
  end

  context '@@base_uri' do
    describe 'method return value' do
      it 'is expected to have "ws.audioscrobbler.com" domain' do
        expect(subject.base_uri).to include('ws.audioscrobbler.com')
      end
    end
  end
end