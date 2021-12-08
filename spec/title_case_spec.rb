require('rspec')
require('title_case.rb')
require('pry')

describe('Text#find_and_replace') do
  it("replaces a matching word with another") do
    text = Text.new("Hello world")
    expect(text.find_and_replace("world", "universe")).to(eq("Hello universe"))
  end
end