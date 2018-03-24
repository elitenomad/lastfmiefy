module Lastfmiefy
  module Client
    class Params
      def self.normalize(params, method)
        params.merge!(
            {
              format: 'json',
              method: method
            }
        )
      end
    end
  end
end