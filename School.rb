class School

  @@record={teachers:{1=>"JUAN PEREZ",2=>"OLIVIA MTZ",3=>"JUAN CARLOS HERNANDEZ"},
            students:{1=>"ROBERTO VELAZCO",2 => "RENE ESTRADA HERNANDEZ"},
            subjects:{1=>"PHYSICAL", 2=>"MATHEMATICS", 3=>"DATABASES"}}

  @@matches = { 1 => { teachers: [1,3], students: { 1 => 10.0 } },
                2 => { teachers: [1,2], students: { 2 => 10.0 } },
                3 => { teachers: [2], students: { 3 => 10.0 } }}

  def self.all(team)
    @@record[team].each do |item|
      puts "#{item[0]}  #{item[1]}"
    end
  end

  def success
    puts "Successful Operation"
  end

  def failure
    puts "Operation Failure"
  end

  def add(team,name,id)
    permit = true
    @@record[team].each do |data|
      permit = false if data[1] == name
    end
    if permit == true
      @@record[team][id] = name
      success
    else
      failure
    end
    permit
  end

end
