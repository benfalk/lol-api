require 'faraday'
require 'json'

module LOL
  module Api
    class Client
      
      def initialize(opts={})
        @key = opts.fetch(:api_key){ LOL::Api.key }
        @conn = Faraday.new url: 'https://prod.api.pvp.net'
        @urls = URLS.new(opts)
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
        response = @conn.get(url,api_key: @key)
        
        JSON.parse(response.body)
      end

    end
  end
end
