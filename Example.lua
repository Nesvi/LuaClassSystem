require "ClassesLua"


--Class examples


Duck = class.new(); --Declare a new class
Duck.constructor = function(self) -- Set up the constructor
	self.variable = 0 -- An internal variable of the class
	print "Soy un pato y he sido creado"
end

Duck.cuak = function(self) -- A simple method
	print("Cuakk! I'm the duck number " .. self.system_id )
end

function Duck:fly()
	print ("I'm flying and I'm the duck number " .. self.system_id)
end

object1 = Duck:new()
object2 = Duck:new()


object2:cuak()
object1:cuak()

object2:fly()
object1:fly()

--Parameter example

Pug = class.new();

function Pug:constructor( a, b )
	print("Parameter a = " .. a )
	print("Parameter b = " .. b )
end

object3 = Pug:new("Hello", "world")
