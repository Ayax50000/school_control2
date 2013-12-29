class Materia
  require_relative 'formatear.rb'
  extend Formato
  $Registro = {:Fisica=> {:Maestros=>["Juan Carlos Hernandez","Juan Perez"],
                          :Alumnos=>[{:Nombre=>"Juan",:Calificacion=>0.0}] },
               :Matematicas=>{:Maestros=>["Olivia Martinez", "Juan Perez"],
                          :Alumnos =>[{:Nombre=>"Pedro",:Calificacion=>0.0}] },
               :BasesDeDatos=>{:Maestros=>["Olivia Martinez"],
                          :Alumnos =>[{:Nombre=>"Juan",:Calificacion=>0.0}] }}
  def initialize(materia)
    @materia = Formato.formatear_materia! materia
  end

  def registrar
    if existe_materia? @materia then
      puts "la materia #{@materia} ya esta registrada"
    else
      $Registro[@materia] = {:Maestros=>[""], :Alumnos=>[{:Nombre=>"",:Calificacion=>0.0}] }
      puts "#{subject} agregado correctamente a materias"
    end
  end
end
