class Student

  @@current_id = 3
  @@students = {1 => "roberto velazco", 2 => "rene estrada hernandez"}

  def initialize(name)
    @name = name
  end

  def self.all
    @@students.each do |record|
      puts "#{record[0]}  #{record[1]}"
    end
  end

  def add
    @@students[@@current_id] = @name
    @@current_id += 1
  end

  def assign

  end
end

Student.all
student = Student.new("Jose de Jesus")
student.add
Student.all
