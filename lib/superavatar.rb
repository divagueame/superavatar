# frozen_string_literal: true

#
# Superavatar gem entrypoint
#
module Superavatar
  require 'superavatar/configuration'
  require 'superavatar/utils/apiclient'

  ## External sources
  require 'superavatar/sources/github'

  ## Local sources
  require 'superavatar/local_sources/base'
  require 'superavatar/local_sources/dice_bear'

  ## Main class
  require 'superavatar/avatar'

  def self.configure
    yield(configuration) if block_given?
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

end
