# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is projection
abort("The Rails environment is running in projection mode!") if Rails.env.projection?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
require 'support/database_cleaner'
require 'factory_girl_rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    with.library :rails
  end
end

def create_and_stub_admin
  admin = User.create(first_name: "john",
                      last_name: "adams",
                      email:     "admin@example.com",
                        password: 'password',
                        role: 1
                        )
  ApplicationController.any_instance.stub(:current_user) {admin}
  admin
end
