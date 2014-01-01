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
      @@current_id += 1
    end
  end


end
Subject.all
subject = Subject.new("psychology")
subject.add
Subject.all
