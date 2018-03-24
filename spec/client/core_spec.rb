require_relative '../spec_helper'

RSpec.describe Lastfmiefy::Client::Core do
  ## The Goal of Lastfmiefy::Client::Core class is to act as a gateway to GEM's Service classes
  # which trigger last.fm webservice methods
  #
  # Let's map two webservice methods user.getTopTracks and geo.getTopArtists to class methods
  context '@@class methods' do
    subject { Lastfmiefy::Client::Core }
    it { is_expected.to respond_to(:albums) }
    it { is_expected.to respond_to(:artists) }
  end

  # Goal of artists is to receive api_key and api_hash from source application
  # And trigger GEM service class to retrieve top artists
  context '@@artists' do
    before do
      expect(subject).to receive(:artists).with('1', {})
    end
    it 'is expected to receive two arguments' do
      subject.artists('1', {})
    end
  end

  # Goal of albums is to receive api_key and api_hash from source application
  # And trigger GEM service class to retrieve top albums per artist
  context '@@albums' do
    before do
      expect(subject).to receive(:albums).with('1', {})
    end
    it 'is expected to receive two arguments' do
      subject.albums('1', {})
    end
  end
end