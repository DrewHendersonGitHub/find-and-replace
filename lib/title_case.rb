class Text
  def initialize(text)
    @text = text
    @words = []
  end
  def find_and_replace(find, replace)
    @words = @text.split(" ")
    @words.each_with_index do |word, i|
      if word == find
        @words[i] = replace
      end
    end
    @words.join(" ")
  end
end