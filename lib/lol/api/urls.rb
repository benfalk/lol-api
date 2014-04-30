module LOL
  module Api
    class URLS
      
      attr_accessor :region
      
      def initialize(args={})
        @region = args.fetch(:region){ 'na' }
      end
           
      def summoner_by_names(*names)
        "/api/lol/#{region}/v1.4/summoner/by-name/#{names.join(',')}"
      end

      def summoner_by_ids(*ids)
        "/api/lol/#{region}/v1.4/summoner/#{ids}"
      end

      def summoner_masteries_by_ids(*ids)
        "/api/lol/#{region}/v1.4/summoner/#{ids.join(',')}/masteries"
      end

      def summoner_runes_by_ids(*ids)
        "/api/lol/#{region}/v1.4/summoner/#{ids.join(',')}/runes"
      end

      def game_recent_by_id(id)
        "/api/lol/#{region}/v1.3/game/by-summoner/#{id}/recent"
      end

      def stats_ranked_by_id(id)
        "/api/lol/#{region}/v1.3/stats/by-summoner/#{id}/ranked"
      end

      def stats_summary_by_id(id)
        "/api/lol/#{region}/v1.3/stats/by-summoner/#{id}/summary"
      end

    end
  end
end
