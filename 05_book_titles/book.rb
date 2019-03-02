class Book
	def title=(str)	
		conj = [ 'for', 'and', 'nor', 'but', 'or', 'yet', 'so' ] 
		prep = [ 'in' , 'of' ]
		art = [ 'a' , 'an' , 'the']
		new_str = str.split(" ").map.with_index do |word, i|
			if conj.include? word or prep.include? word or art.include? word and i != 0
				word
			else word.capitalize
			end
		end
		@title = new_str.join(" ") 
	end
	def title
		@title
	end
end
