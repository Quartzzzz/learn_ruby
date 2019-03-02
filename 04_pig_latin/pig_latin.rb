def translate word
	word_letters = word.split("")
	word_length = word.split(" ").length
  vowel = [ 'a', 'e', 'i', 'o', 'u', 'y' ]
  if vowel.include? word[0] and word_length == 1
  word + 'ay'
	elsif not vowel.include? word[0] and vowel.include? word[1] and word_length == 1
	word_letters.push(word_letters.shift).join("") + 'ay'
	elsif not vowel.include? word[0] and not vowel.include? word[1] and word_length == 1
	word_letters.push(word_letters.shift(2)).join("") + 'ay'
	elsif word_length > 1
	words = word.split(" ").map! do |w|
	w + 'ay'
	end
	words.join(" ") 
	end	
end

