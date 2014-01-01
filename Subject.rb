require_relative 'School.rb'

class Subject < School

  @@current_id = 3

  def initialize

  end

  def self.all
    super(:subjects)
  end

end
Subject.all
