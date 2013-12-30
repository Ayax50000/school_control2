require_relative 'persona.rb'
class Alumno < Persona

  def initialize(nombre)
    super(nombre)
  end

  def ver_alumnos
    puts $Registrados["Alumnos"]
  end

  def ver_calificaciones
    if $Registrados["Alumnos"].include? @nombre.chop
      puts "escriba la materia de la que quiere ver calificaciones?"
      Materia.ver_materias!
      subject = gets
      materia = Materia.new(subject)
      if materia.tiene_alumno? @nombre.chop
        materia.ver_calificacion_de @nombre.chop
      end
    end
  end

  def calificar_materia

  end
end
#juan = Alumno.new("pedro")
#juan.ver_alumnos
#juan.ver_calificaciones
