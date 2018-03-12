require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GlobConnect
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ActionMailer::Base.smtp_settings = {

      :address => 'smtp.mailtrap.io',
      :domain => 'smtp.mailtrap.io',
      :user_name => 'fa7cf249eb6ddf',
      :password => 'dadb3acbac7e6f',
      :port => '2525',
      :authentication => :cram_md5
    }
  end
end
