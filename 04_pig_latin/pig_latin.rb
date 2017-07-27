


def translate pig_latin
vowels = ["a", "e", "i", "o", "u"]
consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","qu","q","r","s","t","v","w","x","y","z",]
answer = []

pig_latin = pig_latin.split(' ')
pig_latin.map do |x|
	x = x.split('')
	consonants.cycle(x.length) do |z|
		if x[0..1].join == z
			x.rotate!
			x.rotate!
		elsif x[0] == z
			x.rotate!
		end
	end
	x.push("ay")
	x.push(" ")
	x.join
	answer = answer + x
end
answer.pop
pig_latin = answer.join
end
