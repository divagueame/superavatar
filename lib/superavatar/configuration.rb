# frozen_string_literal: true

module Superavatar
  class Configuration
    attr_accessor :enable_github

    def initialize
      @enable_github = true
    end
  end
end
