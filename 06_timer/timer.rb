class Timer
	def seconds
		@timer = 00
	end
	def seconds=(num)
		@seconds = num % 60
		@minutes = num / 60 % 60
		@hours = num / 3600
		@timer = num
	end
	def time_string
		@time_string = "%02d:%02d:%02d" % [@hours, @minutes, @seconds] 
	end
end
