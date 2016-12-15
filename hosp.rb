include Math

class Patient
	attr_accessor :name
	attr_accessor :age
	attr_accessor :gender

  def initialize(name ,age ,gender)
     @name = name
     @age = age
     @gender = gender
  end

  def payment
  	puts "Enter consultation fee: "
  	@consult = gets.chomp
  	puts "Enter medication charges: "
  	@med = gets.chomp
  end

  def calculate_total
  	total = @consult + @med
  	puts @name
  	puts @age
  	puts @gender
  	puts "Your total charges are: #{total}"
  end
end 

class InPatient < Patient
  def payment
    super
    puts "Enter accomodation charges: "
    @accom = gets.chomp
  end

  def calculate_total
   total = @consult + @med + @accom
  	puts @name
  	puts @age
  	puts @gender
  	puts "Your total charges are: #{total}"
  end
end

jay = Patient.new("jay" , 20, "M")
jay.payment
jay.calculate_total

mom = InPatient.new("martha" ,30 ,"F")
mom.payment
mom.calculate_total

