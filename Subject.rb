require_relative 'School.rb'

class Subject < School

  @@current_id = 4

  def initialize(name)
    @name = name.upcase
  end

  def self.all
    super(:subjects)
  end

  def add
    if super(:subjects,@name,@@current_id)
      @@mathces[@@current_id] = { teachers: [], students: {} }
      @@current_id += 1
    end
  end

  def all_teachers
    Subject.all
    puts "select a number of subject please"
    id = gets.to_i
    if @@matches[id] != nil
      @@matches[id][:teachers].each do |n|
        puts @@record[:teachers][n]
      end
    end
  end

  def assign_student(id,id_student,score = 0.0)
    @@matches[id][:students][id_team] = score
    success
  end

  def assign_teacher(id,id_teacher)
    @@matches[id][:teachers] << id_teacher
    success
  end

end
Subject.all
subject = Subject.new("databases")
subject.add
Subject.all
subject.all_teachers
