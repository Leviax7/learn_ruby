def translate pig_latin
second_word = []
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

if pig_latin.split.length > 1
	pig_latin = pig_latin.split(' ')
	second_word << pig_latin.slice!(1)
	pig_latin = pig_latin.join
	pig_latin = pig_latin.split('')
	second_word = second_word.join
	second_word = second_word.split('')
	
	consonants.cycle(pig_latin.length) do |x|
		if pig_latin[0] == x
			pig_latin.rotate!
			redo
		end
	end

	pig_latin.push('ay')
	pig_latin.push(' ')

	consonants.cycle(second_word.length) do |x|
		if second_word[0] == x
			second_word.rotate!
			redo
		end
	end

	second_word.push('ay')
	pig_latin = pig_latin + second_word
	pig_latin.join
else	
	pig_latin = pig_latin.split('')
 

 	consonants.cycle(pig_latin.length) do |x|
 		if pig_latin[0] == x
			pig_latin.rotate!
 		
 		end
	end
	pig_latin.push("ay")
	pig_latin.join
end
end
puts translate("three")
