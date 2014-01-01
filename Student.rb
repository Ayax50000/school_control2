require_relative 'School.rb'

class Student < School

  @@current_id = 3

  def initialize(name)
    @name = name
  end

  def self.all
    super(:students)
  end

  def add
  end

  def assign

  end
end

Student.all
student = Student.new("Jose de Jesus")
student.add
Student.all
