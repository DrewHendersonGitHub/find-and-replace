class Text
  def initialize(text)
    @text = text
  end
  def find_and_replace(find, replace)
    words = @text.split("")
    find.split("")
    words.each_with_index do |word, i|
      if i < words.length - find.length + 1
        counter = 0
        check = true
        while counter < find.length && check == true
          if words[i + counter] != find[counter]
            check = false
          end
          counter+=1
        end
        if check
          for a in 1..find.length-1 do
            words[i + a] = ''
          end
          words[i] = replace
        end
      end
    end
    words.join("")
  end
end