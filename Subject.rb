class Subject

  @@record = { 1 => { teachers: [], students: { 1 => 10.0, } } }
  @@subjects = { 1=>"PHYSICAL", 2=>"MATHEMATICS", 3=>"DATABASES"}
  @@current_id = 3

  def initialize

  end

  def self.all
    @@subjects.each do |subject|
      puts "#{subject[0]}  #{subject[1]}"
    end
  end

end
Subject.all
