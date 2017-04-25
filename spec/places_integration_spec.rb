require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path for successfully adding a place!', {:type => :feature}) do
  it('processes destinations and returns that the place was added successfully') do
    visit('/')
    fill_in('destination', :with => 'Dublin')
    click_button('Add Place')
    expect(page).to have_content("successfully")
    expect(page).to have_content("added")
  end
end
