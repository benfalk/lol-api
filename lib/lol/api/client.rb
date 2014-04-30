require 'faraday'
require 'json'

module LOL
  module Api
    class Client
      
      def initialize(opts={})
        @key = opts.fetch(:api_key){ LOL::Api.key }
        @conn = Faraday.new url: 'https://prod.api.pvp.net'
        @urls = URLS.new
      end
      
      private

      def method_missing(method,*args,&block)
        if @urls.respond_to?(method)
          dial @urls.send(method, *args)
        else
          super
        end
      end

      def dial(url)
        JSON.parse @conn.get(url,api_key: @key).body
      end

    end
  end
end
