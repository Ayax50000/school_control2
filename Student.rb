class Student

  @@current_id = 3
  @@record = {1 => "roberto velazco", 2 => "rene estrada hernandez"}

  def initialize(name)
    @name = name
  end

  def self.all
    @@record.each do |record|
      puts "#{record[0]}  #{record[1]}"
    end
  end
end

puts Student.all
