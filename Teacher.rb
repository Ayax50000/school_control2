require_relative 'School.rb'

class Teacher < School

  @@current_id = 4

  def initialize(name)
    @name = name.upcase
  end

  def self.all
    super(:teachers)
  end

  def add
    if super(:teachers,@name,@@current_id)
      @@current_id += 1
    end
  end

end

Teacher.all
