require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Signalement
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")


    smtp_user = ENV["SMTP_USER_NAME"] || Rails.application.credentials&.smtp&.dig(:user_name)
    smtp_password = ENV["SMTP_USER_PASSWORD"] || Rails.application.credentials&.smtp&.dig(:user_password)
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address: 'email-smtp.eu-west-3.amazonaws.com',
      port: 587,
      authentication: 'login',
      enable_starttls_auto: true,
      user_name: smtp_user, 
      password: smtp_password
    }

  end
end
