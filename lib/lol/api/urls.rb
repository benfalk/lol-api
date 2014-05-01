module LOL
  module Api
    class URLS
      
      attr_accessor :region
      
      def initialize(args={})
        @region = args.fetch(:region){ 'na' }
      end
           
      ##
      ## Champion Urls
      ##

      def champion
        "/api/lol/#{region}/v1.2/champion"
      end

      def champion_by_id(id)
        "/api/lol/#{region}/v1.2/champion/#{id}"
      end

      ##
      ## League Urls
      ##

      def league_by_summoner_id(id)
        "/api/lol/#{region}/v2.3/league/by-summoner/#{id}"
      end

      def league_entry_by_summoner_id(id)
        "/api/lol/#{region}/v2.3/league/by-summoner/#{id}/entry"
      end

      def league_by_team_id(id)
        "/api/lol/#{region}/v2.3/league/by-team/#{id}"
      end

      def league_entry_by_team_id(id)
        "/api/lol/#{region}/v2.3/league/by-team/#{id}/entry"
      end

      def league_challenger
        "/api/lol/#{region}/v2.3/league/challenger"
      end

      ##
      ## Summoner Urls
      ##

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

      ##
      ## Game Urls
      ##

      def game_recent_by_id(id)
        "/api/lol/#{region}/v1.3/game/by-summoner/#{id}/recent"
      end

      ##
      ## Stats Urls
      ##

      def stats_ranked_by_id(id)
        "/api/lol/#{region}/v1.3/stats/by-summoner/#{id}/ranked"
      end

      def stats_summary_by_id(id)
        "/api/lol/#{region}/v1.3/stats/by-summoner/#{id}/summary"
      end

      ##
      ## Static Urls
      ##

      def champions
        "/api/lol/static-data/#{region}/v1.2/champion"
      end

      def champion_by_id(id)
        "/api/lol/static-data/#{region}/v1.2/champion/#{id}"
      end

      def items
        "/api/lol/static-data/#{region}/v1.2/item"
      end

      def item_by_id
        "/api/lol/static-data/#{region}/v1.2/item/#{id}"
      end

      def masteries
        "/api/lol/static-data/#{region}/v1.2/mastery"
      end
      
      def mastery_by_id(id)
        "/api/lol/static-data/#{region}/v1.2/mastery/#{id}"
      end

      def realm
        "/api/lol/static-data/#{region}/v1.2/realm"
      end

      def runes
        "/api/lol/static-data/#{region}/v1.2/rune"
      end

      def rune_by_id(id)
        "/api/lol/static-data/#{region}/v1.2/rune/#{id}"
      end

      def summoner_spells
        "/api/lol/static-data/#{region}/v1.2/summoner-spell"
      end

      def summoner_spell_by_id(id)
        "/api/lol/static-data/#{region}/v1.2/summoner-spell/#{id}"
      end

      def versions
        "/api/lol/static-data/#{region}/v1.2/versions"
      end

      ##
      ## Team Urls
      ##

      def teams_by_summoner_id(id)
        "/api/lol/#{region}/v2.2/team/by-summoner/#{id}"
      end

      def team_by_id(id)
        "/api/lol/#{region}/v2.2/team/#{id}"
      end

    end
  end
end
