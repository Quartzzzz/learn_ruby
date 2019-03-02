def echo say
	say
end

def shout say
	say.upcase
end

def repeat say, i = 2 
 ((say + ' ') * i).chop
end

def start_of_word word, i
	word.byteslice(0, i) 
end

def first_word sent
	sent.split(" ")[0] 
end

def titleize title 
	words = title.split(" ")

	i = 0 

	while i < words.length
		word = words[i] 
		if word == 'and'
		word[0] = word[0]
		elsif word == 'over'
		word[0] = word[0]
		elsif word == 'the' && word != words[0]
		word[0] = word[0] 
		else
		word[0] = word[0].capitalize
		end
		i += 1
	end
return words.join(" ") 
end	
