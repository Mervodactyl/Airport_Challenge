class Plane
# attr_reader is a shortcut that means you can write your
# variable in 'initialize' and have it 'read' quicker than
# if you had to write out a method to have it understood
# it saves you time because you just add to the ends of
# Initialize and attr_reader!

# EG:
# attr_reader :flying, :name

	# def initialize
	# 	@flying = true
	# 	@name = 'Party Plane"
	# end

# INSD:
# def flying
# 	@flying
# end

# def name
# 	@name
# end

# attr_writer allows you to change the property of something that
# originally had another value, usually from another class, and again
# saves you time.

attr_reader :flying, :in_air, :name
attr_writer :name

def initialize
	@flying = true
	@in_air = true
	@name = 'Party Plane'
end

# def grounded?
# 	!@flying
# end

def grounded
	@flying = false
end

def take_off
	@flying = true
end

# def flying?
# 	@flying
# end

end

puts name= "time traveling super plane"


# check out setter and getter methods









