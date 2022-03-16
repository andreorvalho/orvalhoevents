require_relative "boot"

require "rails/all"
require "sprockets/railtie"
require 'rolify/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Orvalhoevents
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Don't generate system test files.
    config.generators.system_tests = nil
  end
end
