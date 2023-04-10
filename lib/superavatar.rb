# frozen_string_literal: true

#
# Superavatar

# Provides avatars for your users
#
module Superavatar
  require 'superavatar/configuration'
  require 'superavatar/sources/github'
  require 'superavatar/utils/apiclient'
  require 'superavatar/avatar'

  def self.configure
    yield(configuration) if block_given?
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

end
