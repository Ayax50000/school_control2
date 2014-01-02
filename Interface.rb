require_relative 'Teacher.rb'
require_relative 'Student.rb'
require_relative 'Subject.rb'

def interface
    puts "What do you like to do
          1) see teachers
          2) add teachers
          3) assign teacher
          4) see teachers by subject
          5) add subject
          6) see subjects
          7) add student
          8) assign student
          9) see students
          10) assign score to student
          11) see student score by subject
          0) exit"
end
def go_back
  system 'clear'
  puts "\n" * 6
  yield
  puts "\n" * 6
  puts "Press enter to go back"
  gets
end

  input = nil
  while input != 0
    system 'clear'
    interface
    input = gets.chomp.to_i
    case input
      when 1 then go_back { Teacher.all }
      when 2 then go_back do
          puts "Please write the name for the new teacher"
          teacher = Teacher.new(gets.chomp)
          teacher.add
        end
      when 3 then go_back do
          Teacher.all
          puts " select the number of the teacher"
          id_teacher = gets.chomp.to_i
          puts " please select the number of subject"
          Subject.all
          Subject.assign_teacher(gets.chomp.to_i,id_teacher)
        end
      when 4 then go_back do
          Subject.all
          puts "Please select the subject number do you like"
          Subject.all_teachers(gets.chomp.to_i)
        end
      when 5 then go_back do
          puts "What is the name of the new subject"
          subject = Subject.new(gets.chomp)
          subject.add
        end
      when 6 then go_back { Subject.all }
      when 7 then go_back do
          puts "Please write the name for the new student"
          student = Student.new(gets.chomp)
          student.add
        end
      when 8 then go_back do
          Student.all
          puts "Please select the number of student you want to assign"
          id_student = gets.chomp.to_i
          Subject.all
          puts "Please select the subject target"
          Subject.assign_student(gets.chomp.to_i,id_student)
        end
      when 9 then go_back { Student.all }
      when 10 then go_back do
          Student.all
          puts "Please select the number of student you want to assign"
          id_student = gets.chomp.to_i
          Subject.student_assignations(id_student)
          puts "Please select the subject target"
          subject = gets.chomp.to_i
          puts "What is the score"
          score = gets.chomp.to_i
          Subject.assign_student(subject,id_student,score)
        end
      when 11 then go_back do
          Student.all
          puts "Please select the number of student you want to see the score"
          id_student = gets.chomp.to_i
          Subject.student_assignations.(id_student)
          puts "Please select the subject"
          Subject.assign_score(gets.chomp.to_i,id_student)
        end
    end
  end
  system 'clear'
