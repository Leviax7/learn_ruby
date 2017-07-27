
def convert_two pig_latin
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","qu","q","r","s","t","v","w","x","y","z",]
second_word = []

 
 
	pig_latin = pig_latin.split(' ')
	second_word << pig_latin.slice!(1)
	pig_latin = pig_latin.join
	pig_latin = pig_latin.split('')
	second_word = second_word.join
	second_word = second_word.split('')
	
	consonants.cycle(pig_latin.length) do |x|
		if pig_latin[0..1].join == x
			pig_latin.rotate!
			pig_latin.rotate!

		elsif pig_latin[0] == x
			pig_latin.rotate!
			
		end
	end

	pig_latin.push('ay')
	pig_latin.push(' ')

	consonants.cycle(second_word.length) do |x|
		if second_word[0..1].join == x
			second_word.rotate!
			second_word.rotate!
		elsif second_word[0] == x
			second_word.rotate!
			
		end
	end

	second_word.push('ay')
	pig_latin = pig_latin + second_word
	pig_latin.join
end	


def convert pig_latin
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","qu","q","r","s","t","v","w","x","y","z"]
	pig_latin = pig_latin.split('')
 

 	consonants.cycle(pig_latin.length) do |x|
 		if pig_latin[0..1].join == x
			pig_latin.rotate!
			pig_latin.rotate!
 		
 		elsif pig_latin[0] == x
			pig_latin.rotate!
 		
 		end
	end
	pig_latin.push("ay")
	pig_latin.join
end


def translate pig_latin

	if pig_latin.split.length > 1
		convert_two(pig_latin)
	else
		convert(pig_latin)
end
end
