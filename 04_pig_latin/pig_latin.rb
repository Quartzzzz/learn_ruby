def translate word
	word_letters = word.split("")
	word_length = word.split(" ").length
  vowel = [ 'a', 'e', 'i', 'o', 'u', 'y' ]
  if vowel.include? word[0] and word_length == 1
  word + 'ay'
	elsif not vowel.include? word[0] and vowel.include? word[1] and not word[1] == "u" and word_length == 1
	word_letters.push(word_letters.shift).join("") + 'ay'
	elsif word[0] == "q" and word[1] == "u"
	word_letters.push(word_letters.shift(2)).join("") + 'ay'
	elsif word[1] == "q" and word[2] == "u" and not vowel.include? word[0]
	word_letters.push(word_letters.shift(3)).join("") + 'ay'
	elsif not vowel.include? word[0] and not vowel.include? word[1] and vowel.include? word[2] and word_length == 1 
	word_letters.push(word_letters.shift(2)).join("") + 'ay'
	elsif not vowel.include? word[0] and not vowel.include? word[1] and not vowel.include? word[2] and word_length == 1
	word_letters.push(word_letters.shift(3)).join("") + 'ay'
	elsif word_length > 1
	words = word.split(" ").map! do |word|
	translate word
	end
	words.join(" ") 	
	end
end

