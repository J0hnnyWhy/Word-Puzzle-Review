require('rspec')
require "pry"
require('word_puzzle')
require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application

describe('String#word_puzzle') do
  it("split words in a sentence into separate strings with separate letters") do
     expect(("the the").word_puzzle()).to(eq("th- th-"))
  end

  it("takes the users string and splits it into individual letters") do
    expect(("th").word_puzzle()).to(eq("th"))
  end

  it("replaces any vowels with '-'") do
    expect(("the").word_puzzle()).to(eq("th-"))
  end

  it("rejoins the words to reform the sentence") do
     expect(("the cat hair").word_puzzle()).to(eq("th- c-t h--r"))
  end

end
