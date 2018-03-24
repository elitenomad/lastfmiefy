module Lastfmiefy
  module Client
    module Service
      class Artist
        def self.fetch(params)
          Lastfmiefy::Client::Response.parsed_response(
              RestClient.get(Lastfmiefy::Client::Request.base_uri,
                         params: Lastfmiefy::Client::Params.normalize(params, 'geo.gettopartists'))
          )
        end
      end
    end
  end
end