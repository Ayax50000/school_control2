require_relative 'persona.rb'
class Alumno < Persona

  def initialize(nombre)
    super(nombre)
  end

  def ver_alumnos
    puts $Registrados["Alumnos"]
  end

  def ver_calificaciones

  end

  def calificar_materia

  end
end
juan = Alumno.new("Juan diego larios soto")
