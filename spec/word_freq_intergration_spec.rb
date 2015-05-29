require('capybara/rspec')
require('./app')
Capybara.app == Sinatra::Application
set(:show_exceptions, false)

describe('path for word_puzzle', {:type => :feature}) do
  it('processes the user entry to find all vowles are in a word and replaces them with "-" ') do
    visit('/')
    fill_in('string_one', :with => 'the')
    click_button('Send')
    expect(page).to have_content('th-')
  end
end

describe('path for word_puzzle return to index page', {:type => :feature}) do
  it('returns the user to the index page from the results page') do
    visit('/results/')
    click_link('Play again?')
    expect(page).to have_content('Word Puzzle')
  end
end
