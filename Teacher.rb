require_relative 'School.rb'

class Teacher < School

  @@current_id = 4

  def initialize
  end

  def self.all
    super(:teachers)
  end

end

Teacher.all
