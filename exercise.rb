class Exercise

  def self.getPunct(word)
    #see if the word has a punctuation
    punct = /[[:punct:]]/.match(word)
   
    #decide if you need to use Marklar or marklar
    if word[0] == word[0].capitalize
      #if it has a punctuation, add it to Marklar
      if defined? punct[0]
          return 'Marklar' + punct[0]
      else
          return 'Marklar'
      end
    else
      if defined? punct[0]
          #if it has a punctuation, add it to marklar
          return 'marklar' + punct[0]
      else
          return 'marklar'
      end
    end

  end

  def self.fibSeq(n)
    #recursive fibonacci sequence
    if n < 2
      return n
    else     
      return fibSeq(n - 1) + fibSeq(n - 2)
    end

  end 

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    #split the string into an array of single words
    strArr = str.split(' ')
    #initialize a new array for the marklar'd words
    newArr = Array.new
    #check each word to see if it needs to be marklar'd
    strArr.each do |word|
        #only check the word if it meets the character length requirement
        if word.length > 4
            newArr << getPunct(word)
            next
        end
        newArr << word 
    end
    #return the array as a string
    return newArr.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    evenSumTotal = 0

    #execute fibSeq nth times
    (1..nth).each do |i|
      #use modulus to check if even -> add it to evenSumTotal
      if(fibSeq(i) % 2) == 0
        evenSumTotal = evenSumTotal + fibSeq(i)
      end
    end

    return evenSumTotal
  end
  
end