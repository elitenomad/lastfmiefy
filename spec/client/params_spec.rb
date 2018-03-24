require_relative '../spec_helper'

RSpec.describe Lastfmiefy::Client::Params do
  subject { Lastfmiefy::Client::Params }
  # The Goal of Lastfmiefy::Client::Params class is to massage params
  # and add default keys to request hash required by webservice method
  context '@@class methods' do
    it { is_expected.to respond_to(:normalize) }
  end

  # Goal of normalize is to receive params and method name as inputs
  # And return complete params required by a webservice method
  context '@@normalize' do

    describe 'method arguments' do
      before do
        expect(subject).to receive(:normalize).with({}, 'blah-blah')
      end

      it 'is expected to have two arguments' do
        subject.normalize({}, 'blah-blah')
      end
    end


    describe 'method return hash' do
      it 'is expected to have a key "method"' do
        expect(subject.normalize({}, 'blah-blah')).to have_key(:method)
      end

      it 'is expected to have a key "format"' do
        expect(subject.normalize({}, 'blah-blah')).to have_key(:format)
      end
    end
  end
end