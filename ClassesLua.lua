--Declaraciones iniciales

system_class_instances = {}
class = {}

--Instance storage

system_class_instances.add = function( newInstance ) 

	system_class_instances[#system_class_instances + 1] = newInstance
	return #system_class_instances
end

--Class storage

class.new = function() --Creates a new class
	newClass = {}
	class[#class+1] = newClass
	newClass.new = function (self)
		newInstance = {}

		for key,value in pairs(self) do 
			newInstance[key] = value 
			print(key)
		end

		newInstance.system_id = system_class_instances.add(newInstance)
		newInstance:constructor()

		return newInstance
	end
	
	return newClass
end


--Class examples

Duck = class.new(); --Declare a new class
Duck.constructor = function(self) -- Set up the constructor
	self.variable = 0 -- An internal variable of the class
	print "Soy un pato y he sido creado"
end

Duck.cuak = function(self) -- A simple method
	print("cuak" .. self.system_id )
end


object1 = Duck:new()
object2 = Duck:new()


object2:cuak()
object1:cuak()
