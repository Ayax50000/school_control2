class Teacher

  @@teachers = { 1=> "Juan Perez", 2=> "Olivia Mtz", 3 => "Juan Carlos Hernandez"}

  def initialize
  end

  def self.all
    @@teaches.each do |teacher|
      puts "#{teachers[0]}  #{teachers[1]}"
    end
  end
  :w
end
