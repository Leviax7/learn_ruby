class Book
attr_reader :title

def title=(book_title)
	exceptions =  ["And", "In", "The","Of", "A","An"]
	@title = book_title.split(/(\W)/)
	@title.map!(&:capitalize)
	@title.drop(1).map do |x|
		if exceptions.include?(x)
			x.downcase!
		end
		
	end
@title = @title.join

end
end

