require "capybara/rspec"
require 'rubygems'
require 'spork'
require 'database_cleaner'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  RSpec.configure do |config|
    config.include ActionDispatch::TestProcess
    config.include Devise::TestHelpers, type: :controller
    config.include Capybara::DSL
    config.infer_spec_type_from_file_location!
    config.infer_base_class_for_anonymous_controllers = true
    config.use_transactional_fixtures = false
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"

     config.before :each do
      if Capybara.current_driver == :selenium
        DatabaseCleaner.strategy = :truncation
      else
        DatabaseCleaner.strategy = :transaction
      end
      DatabaseCleaner.start
    end

    config.after(:each) do
      DatabaseCleaner.clean
    end

    config.include FactoryGirl::Syntax::Methods
  end
end

Spork.each_run do
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  FactoryGirl.reload
  include LoginMacros
end
