class Person 
	
	def initialize first_name, last_name, gender
		@first_name, @last_name, @gender = first_name, last_name, gender
	end

	def full_name
		first_name + " " + last_name
	end

	private 
		def first_name
			@first_name
		end

		def last_name
			@last_name
		end
end
#Point to remember: there are no attr_accessors here
#Private methods are accessible only from within the object, so you can't call person = Person.new; person.first_name
 
# but you can call full_name since it is public. And since full_name is a method within the object, it can call first_name and last_name.

# That's encapsulation, protecting.
