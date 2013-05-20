require "conflate-rails/version"
require "conflate"

module Conflate
  module Rails
    class Railtie < ::Rails::Railtie
      config.before_initialize do
        Conflate::Conflator.new(::Rails.root.join("config"), ::Rails.application.config).perform
      end
    end
  end
end
