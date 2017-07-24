def echo phrase
	phrase
end


def shout phrase
	phrase.upcase
end

def repeat phrase
	"#{phrase} #{phrase}"
end

def repeat (phrase, times = 2)
	("#{phrase} " * times.to_i).strip
end

def start_of_word (word, letter_number)
	word.chars[0..letter_number - 1].join
end

def first_word phrase
	a = phrase.split(' ')
	a[0]
end

def titleize word
	checks = ["And", "The", "Over"]	
	a = word.split.map(&:capitalize)
	a.each do |i|
		if checks.include? i
			i.downcase!
		
		end
	end
a[0].capitalize!
a.join(' ')
end
