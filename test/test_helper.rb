ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'minitest/pride'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def create_how_to_topic
    visit root_path
    click_on "New how to topic"
    fill_in "Title", with: "Speak Portuguese"
    fill_in "Description", with: "Learn how to speak Brazilian Portuguese in just 3 months"
    click_on "Create new How To"
  end

  # Add more helper methods to be used by all tests here...
end
