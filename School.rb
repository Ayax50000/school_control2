class School

  @@record={teachers:{1=>"JUAN PEREZ",2=>"OLIVIA MTZ",3=>"JUAN CARLOS HERNANDEZ"},
            students:{1=>"ROBERTO VELAZCO",2 => "RENE ESTRADA HERNANDEZ"},
            subjects:{ 1=>"PHYSICAL", 2=>"MATHEMATICS", 3=>"DATABASES"}}

  @@matches = { 1 => { teachers: [1,3], students: { 1 => 10.0 } },
                2 => { teachers: [1,2], students: { 2 => 10.0 } },
                3 => { teachers: [2], students: { 3 => 10.0 } }}

  def self.all(what)
    @@record[what].each do |item|
      puts "#{item[0]}  #{item[1]}"
    end
  end

  def add(what,name,id)
    permit = true
    @@record[what].each do |data|
      permit = false if data[1] == name
    end
    if permit == true
      @@record[what][id] = name
      puts "successful operation"
    else
      puts "#{name} already registered in #{what}"
    end
    permit
  end

end
