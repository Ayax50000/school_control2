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
      @@matches[@@current_id] = { teachers: [], students: {} }
      @@current_id += 1
    end
  end

  def self.all_teachers(id)
    if @@matches[id] != nil
      @@matches[id][:teachers].each do |n|
        puts @@record[:teachers][n]
      end
    end
  end

  def self.assign_student(id,id_student,score = 0.0)
    @@matches[id][:students][id_student] = score
    School.success
  end

  def self.assign_teacher(id,id_teacher)
    @@matches[id][:teachers] << id_teacher
    School.success
  end

  def self.student_assignations(id)
    subjects = []
    @@matches.each do |subject|
      if subject[1][:students].keys.include? id
        puts "#{subject[0]} #{@@record[:subjects][subject[0]]}"
      end
    end
  end

  def student_score(id,id_student)
    puts @@matches[id][:students][id_student]
  end

end
