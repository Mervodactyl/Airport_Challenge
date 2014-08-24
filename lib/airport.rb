require './lib/weather'

class Airport

include Weather

CAPACITY = 3

attr_reader :hangar, :capacity

	def initialize
		@hangar = []
		@capacity = CAPACITY
	end

	def land(plane)
		return "You're in the DANGER ZONE!!!" if weather == :stormy
		return "bugger off we're full" if hangar.count == @capacity
		plane.grounded
		hangar << plane
	end

	def take_off(plane)
		return "THOU SHALT NOT PASS" if weather == :stormy
		hangar.delete(plane)
		plane.take_off
	end

# computers are stupid, remember the box method with spike, you have to tell them the toys are in the box AND are no longer visible. they don't know otherwise (obvious to us in PRACTICALITY but NOT in computer speak!!
# look up returns
end
