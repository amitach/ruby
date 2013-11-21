class Person 
	attr_reader :first_name, :last_name, :gender
	def initialize first_name, last_name, gender
		@first_name, @last_name, @gender = first_name, last_name, gender
	end

	def full_name
		first_name + " " + last_name
	end
end

class Student < Person
	attr_reader :preferred_language
	def initialize first_name, last_name, gender, preferred_language
		super first_name, last_name, gender
		@preferred_language = preferred_language
	end
end


class Electrician < Person
	attr_reader :tools
	def initialize first_name, last_name, gender, tools
		super first_name, last_name, gender
		@tools = tools
	end
end



=begin
	
[7] pry(main)> Person
=> Person
[8] pry(main)> Student
=> Student
[9] pry(main)> Electrician
=> Electrician
[10] pry(main)> person = Person.new
ArgumentError: wrong number of arguments (0 for 3)
from /mnt/amit/ruby/Inheritance/person.rb:3:in `initialize'
[11] pry(main)> person = Person.new("Amit","Acharya","Male")
=> #<Person:0x000000020a82d0
 @first_name="Amit",
 @gender="Male",
 @last_name="Acharya">
[12] pry(main)> student = Studnet.new("Rahul","Acharya","Male")
NameError: uninitialized constant Studnet
from (pry):9:in `__pry__'
[13] pry(main)> student = Student.new("Rahul","Acharya","Male")
ArgumentError: wrong number of arguments (3 for 4)
from /mnt/amit/ruby/Inheritance/person.rb:14:in `initialize'
[14] pry(main)> student = Student.new("Rahul","Acharya","Male","ruby")
=> #<Student:0x0000000243d378
 @first_name="Rahul",
 @gender="Male",
 @last_name="Acharya",
 @preferred_language="ruby">
[15] pry(main)> electrician = Electrician.new("Rahul","Acharya","Male",["wire cutter","pliers"])
=> #<Electrician:0x00000002328b68
 @first_name="Rahul",
 @gender="Male",
 @last_name="Acharya",
 @tools=["wire cutter", "pliers"]>
[16] pry(main)> electrician.full_name
=> "Rahul Acharya"
[17] pry(main)> student.full_name
=> "Rahul Acharya"
[18] pry(main)> person.full_name
=> "Amit Acharya"
[19] pry(main)> 

	
=end