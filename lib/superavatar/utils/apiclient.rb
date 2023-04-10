# frozen_string_literal: true

# Superavatar::Apiclient
#
# Fetches external resources
#
module Superavatar
  module Utils 
    class Apiclient 
      require 'net/http'
      require 'json'
      require 'open-uri'

      def self.test_me
        puts "Testing from APIClient::Fetch"
      end

      def self.fetch_external_api(url, json=true)
       begin 
          puts 'Fetching from...'
          puts url
          response = URI.open(url).read
          response
          JSON.parse(response) if json==true
       rescue StandardError => e
          puts "Request failed #{e.message}"
       end
      end
    end
  end
end
