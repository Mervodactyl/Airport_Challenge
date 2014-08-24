class Airport

CAPACITY = 3

	attr_reader :hangar

	def initialize
		@hangar = []
		@capacity = CAPACITY
	end

	def accept(plane)
			return "bugger off we're full" if hangar.count == @capacity
			hangar << plane
	end

	def take_off(plane)
		hangar.delete(plane)
	end


# look up returns
end
