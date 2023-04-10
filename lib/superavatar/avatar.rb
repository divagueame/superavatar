# frozen_string_literal: true

module Superavatar
  class Avatar
    attr_accessor :github_username, :avatar_url

    def initialize
      @github_username = nil
      @avatar_url = nil
      yield self if block_given?
    end

    def avatar_url
      return fetch_avatar_url if @avatar_url.nil?
      @avatar_url
    end

    private 

    def fetch_avatar_url
      @avatar_url = Superavatar::Sources::Github.new(@github_username).get_avatar_url unless @github_username.nil?
    rescue StandardError => e
      puts "Error fetching the avatar_url: #{e.message}"
    end
  end
end
