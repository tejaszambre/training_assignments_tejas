class Person
  
  @name
  def initialize(name)
    @name = name
  end

  def name
    puts "Hello, #{@name}"
#    customer_private_method
  end

  protected
  def designation
    puts "Hello #{@name}, You are a Person"
  end

  private
  def private_method_person
    puts "Hello, This is a private method"
  end

end

class Customer < Person

  def name
    super
    puts "Welcome #{@name}"
#    designation
#    private_method_person
  end

  def designation
    puts "Hello #{@name}, You are a Customer"
    customer_private_method
  end
  
  private
#  protected
  def customer_private_method
    puts "Its a private method of customer"
  end

end

class Superier_role_user < Person

  def name
    super
    puts "Welcome #{@name}"
  end

  def designation
    puts "Hello #{@name}, You are a Superier user"
  end

end

class Employee < Person

  def name
    super
    puts "Welcome #{@name}"
  end

  def designation
    puts "Hello #{@name}, You are a Employee"
  end

end

person = Person.new("Tejas")
person.name
#person.designation

customer = Customer.new("Sagar")
customer.name
customer.designation
person.name

#customer.customer_private_method

superier = Superier_role_user.new("Niharika")
superier.name
superier.designation
person.name

employee = Employee.new("Akansha")
employee.name
employee.designation
person.name

#customer.name
