require('rspec')
require "pry"
require('rps')
require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application

describe('String#word_puzzle') do
  it("takes the users string and splits it into individual letters")
    expect(("the").word_freq()).to(eq("t", "h", "-"))
  end
end
