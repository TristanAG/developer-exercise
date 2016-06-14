class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #str = 'Dolphins are super smart Mammals from the sea'

    #str = 'Dolphins are super smart Mammals from the sea'

    strArr = str.split(' ')
    newArr = Array.new

    strArr.each do |word|
        if word.length > 4


          #get last char of array
          endChar = word.last
          #determine if it's punctuation
            #endChar.gsub!(/[,.?!:;]/)
            puts endChar
          
            if word[0] == word[0].capitalize 
                newArr << 'Marklar'
                next
            end
            newArr << 'marklar'
            next
        end
        newArr << word 
    end

    return newArr.join(' ')



  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
  end

end
