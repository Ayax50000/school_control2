class Materia
  require_relative 'formatear.rb'
  extend Formato
  $Registro = {:Fisica=> {:Maestros=>["Juan Carlos Hernandez","Juan Perez"],
                          :Alumnos=>[{:Nombre=>"Juan",:Calificacion=>0.0}] },
               :Matematicas=>{:Maestros=>["Olivia Martinez", "Juan Perez"],
                          :Alumnos =>[{:Nombre=>"Pedro",:Calificacion=>0.0}]},
               :BasesDeDatos=>{:Maestros=>["Olivia Martinez"],
                          :Alumnos =>[{:Nombre=>"Juan",:Calificacion=>0.0}]}}
  def initialize(materia)
    @materia = Formato.formatear_materia! materia
  end

  def registrar
    if existe_materia?  then
      puts "la materia #{@materia} ya esta registrada"
    else
      $Registro[@materia] = {:Maestros=>[""], :Alumnos=>[{:Nombre=>"",:Calificacion=>0.0}] }
      puts "#{@materia} agregado correctamente a materias"
    end
  end

  def quien_imparte?
    if existe_materia? then
      puts "#{@materia} es impartida por los siguientes profesores:"
      $Registro[@materia][:Maestros].each { |maestro| puts maestro }
    else
      puts " la materia #{@materia} no esta registrada"
    end
  end

  def self.ver_materias!
    puts $Registro.keys
  end

  private

  def tiene_alumno?(alumno)
    asignado = false
    $Registro[@materia][:Alumnos].each do |estudiante|
      if estudiante[:Nombre] == alumno then
        asignado = true
      end
    end
    asignado
  end

  def existe_materia?
    respuesta = false
    respuesta = true if $Registro[@materia] != nil
    respuesta
  end

end

materia = Materia.new("aritmetica")
materia.registrar
Materia.ver_materias!
materia.quien_imparte?
#puts materia.existe_materia?
