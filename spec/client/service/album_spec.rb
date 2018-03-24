require_relative '../../spec_helper'

RSpec.describe Lastfmiefy::Client::Service::Album do
  subject { Lastfmiefy::Client::Service::Album }

  ## The Goal of Lastfmiefy::Client::Service::Album class is to trigger
  # last.fm webservice methods related to album per artist
  context '@@class methods' do
    it { is_expected.to respond_to(:fetch) }
  end

  context '@@fetch' do
    describe 'method arguments' do
      before do
        expect(subject).to receive(:fetch).with({})
      end

      it 'is expected to have 1 argument' do
        subject.fetch({})
      end
    end

    # Web-mock will high-jack the http request last.fm.
    # Irrespective of webservice method call it returns the same response.
    # One of the keys is "name" after parsing
    describe 'method return value' do
      it 'is expected to have parsed to json' do
        expect(subject.fetch({})).to be_kind_of(Hash)
        expect(subject.fetch({})).to have_key("name")
      end
    end
  end
end