require 'lol/api/version'
require 'lol/api/urls'
require 'lol/api/client'

module LOL
  module Api

    class << self
      def key=(key)
        @key = key
      end
      
      def key
        @key || ''
      end
    end
    
  end
end
