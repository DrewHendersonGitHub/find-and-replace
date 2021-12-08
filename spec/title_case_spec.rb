require('rspec')
require('title_case.rb')
require('pry')

describe('Text#find_and_replace') do
  it("replaces a matching word with another") do
    text = Text.new("Hello world")
    expect(text.find_and_replace("world", "universe")).to(eq("Hello universe"))
  end
  it("replaces a single letter with another") do
    text = Text.new("Hello world")
    expect(text.find_and_replace("l", "q")).to(eq("Heqqo worqd"))
  end
  it("replaces partial matching words with another") do
    text = Text.new("Hello el world elel")
    expect(text.find_and_replace("el", "universe")).to(eq("Huniverselo universe world universeuniverse"))
  end
  #it("moby dick") do
  #  text = Text.new("./moby.txt")
  #  expect(text.find_and_replace("e", "eeeeeee")).to(eq("Huniverselo #universe world universeuniverse"))
  #end
end