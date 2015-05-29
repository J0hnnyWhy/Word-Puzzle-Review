require('rspec')
require "pry"
require('word_puzzle')
require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application

describe('String#word_puzzle') do
  it("takes the users string and splits it into individual letters") do
    expect(("the").word_puzzle()).to(eq(["t", "h", "e"]))
  end
end
