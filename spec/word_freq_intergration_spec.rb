require('capybara/rspec')
require('./app')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)

describe('path for word_puzzld', {:type => :feature}) do
  it('processes the user entry to find all vowles are in a word and replaces them with "-" ') do
    visit('/')
    fill_in('string_one', :with => 'the')
    click_button('Send')
    expect(page).to have_content('th-')
  end
end
