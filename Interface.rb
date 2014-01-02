require_relative 'Teacher.rb'
require_relative 'Student.rb'
require_relative 'Subject.rb'

class Interface

  def self.menu_start
    clean
    print "what do you like to do
            1) work with students
            2) work with teachers
            3) work with subjects
            4) exit \n\n\n\n"
    menu_start_driver
  end

  def self.menu_start_driver
    input = nil
    while input != 4
      input = format(gets)
      case input
        when 1 then menu_students
        when 2 then menu_teachers
        when 3 then menu_subjects
      end
    end
  end

  def self.menu_students
    clean
    print "\t   1) see all
           2) add and assign
           3) assign score
           4) see score by subject
           5) return to start"
  end

  def self.menu_teachers
    clean
    print "\t   1) see all
           2) add
           3) assign
           4) return to start"
  end

  def self.menu_subjects
    clean
    print "\t   1) see all
           2) add
           3) see teachers by subject
           4) return to start"
  end

  def self.format(input)
    input.chomp.to_i
  end

  def self.clean
    system 'clear'
  end

end
Interface.menu_start
