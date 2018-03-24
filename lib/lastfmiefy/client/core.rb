module Lastfmiefy
  module Client
    class Core
      class << self
        def albums(api_key, params)
          Lastfmiefy::Client::Service::Album.fetch(params.merge!(api_key: api_key))
        end

        def artists(api_key, params)
          Lastfmiefy::Client::Service::Artist.fetch(params.merge!(api_key: api_key))
        end
      end
    end
  end
end