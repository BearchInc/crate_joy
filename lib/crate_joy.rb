require 'crate_joy/client.rb'
require 'crate_joy/version'

module CrateJoy

  class API

    def self.client(id, key)
      Client.new(id, key)
    end

  end
end