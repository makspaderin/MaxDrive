require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
config.time_zone = 'Eastern European Time'
config.active_record.default_timezone = :local
Paperclip.options[:command_path] = "/usr/local/bin/"

module Maxdrive
  class Application < Rails::Application
  	config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
