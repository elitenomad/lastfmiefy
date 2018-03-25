module Lastfmiefy
  module Client
    module Service
      class Album
        def self.fetch(params)
          Lastfmiefy::Client::Response.parsed_response(
              RestClient.get(Lastfmiefy::Client::Request.base_uri,
                         params: Lastfmiefy::Client::Params.normalize(params, 'artist.gettopalbums'))
          )
        end
      end
    end
  end
end