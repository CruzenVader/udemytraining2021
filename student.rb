# Student class
class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email address: #{@email},
      Username: #{@username}"
  end

end

nathan = Student.new('Nathan', 'Taylor', 'nathan@email.com',
                     'nathant', 'password1')
john = Student.new('John', 'Smith', 'john@email.com',
                     'johns', 'password2')
puts nathan
puts john
nathan.last_name = john.last_name
puts 'Nathan is altered'
puts nathan
