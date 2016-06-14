
str = "haystack?"

def getPunct(word)
	punct = /[[:punct:]]/.match(word)

	theChar = punct[0]

	return theChar
end

if(getPunct(str))
	puts 'hi'
end


#this is important because it proves that you can get a string
#from this method... it would be better if it converted it within the method
#the lesson is that match data returns an array


