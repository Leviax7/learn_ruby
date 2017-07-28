class Timer
attr_reader :seconds

def initialize
@seconds=0
@time = Time.gm(2017,nil,nil,0,0,0,0)
end

def seconds=(number)
@time = @time + number
end

def time_string
	
	@time.strftime('%H:%M:%S')
end
end
