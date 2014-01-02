require_relative 'Teacher.rb'
require_relative 'Student.rb'
require_relative 'Subject.rb'

def interface
    puts "What do lo like to do
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
      when 1 then
        go_back { Teacher.all }
      when 2 then
        go_back do
          puts "Please write the name for the new teacher"
          teacher = Teacher.new(gets.chomp)
          teacher.add
        end
      when 3 then
        go_back do
          Teacher.all
          puts " select the number of the teacher"
          id_teacher = gets.chomp.to_i
          puts " please select the number of subject"
          Subject.all
          Subject.assign_teacher(gets.chomp.to_i,id_teacher)
        end
    end
  end
  system 'clear'
