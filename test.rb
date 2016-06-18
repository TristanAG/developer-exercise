
    # TODO: Implement this method
    
    #need a method to determine if a word contains punctuation

    def getPunct(word)
        punct = /[[:punct:]]/.match(word)

        theChar = punct[0]

        return theChar
    end

    str = 'Dolphins are super smart Mammals? from the sea!'

    strArr = str.split(' ')
    newArr = Array.new



    strArr.each do |word|
        
        if word.length > 4

            if word[0] == word[0].capitalize

                newArr << 'Marklar' 
                next

            end

            newArr << 'marklar'
            next
        end
        newArr << word 
    end

    #return newArr.join(' ')
    puts newArr.join(' ')


#    puts newArr[0]
#    puts newArr[1]
#    puts newArr[2]
#    puts newArr[3]
#    puts newArr[4]
#    puts newArr[5]
#    puts newArr[6]
#    puts newArr[7]
#    puts newArr[8]
#    puts newArr[9]

    


