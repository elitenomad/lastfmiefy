module Lastfmiefy
  module Client
    class Response
      def self.parsed_response(response)
        JSON.parse(response.body)
      end
    end
  end
end