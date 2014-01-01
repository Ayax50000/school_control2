require_relative 'School.rb'

class Student < School

  @@current_id = 3

  def initialize(name)
    @name = name.upcase
  end

  def self.all
    super(:students)
  end

  def add
    if super(:students,@name,@@current_id)
      @@current_id += 1
    end
  end


  def assign

  end
end

Student.all
student = Student.new("Jose de Jesus")
student.add
Student.all
