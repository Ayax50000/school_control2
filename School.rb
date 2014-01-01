class School

  @@record={teachers:{1=>"Juan Perez",2=>"Olivia Mtz",3=>"Juan Carlos Hernandez"},
              students:{1=>"roberto velazco",2 => "rene estrada hernandez"},
              subjects:{ 1=>"PHYSICAL", 2=>"MATHEMATICS", 3=>"DATABASES"}}
  @@matches = { 1 => { teachers: [], students: { 1 => 10.0, } } }

  def self.all(what)
    @@record[what].each do |item|
      puts "#{item[0]}  #{item[1]}"
    end
  end

end
