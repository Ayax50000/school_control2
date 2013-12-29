require_relative 'persona.rb'
class Alumno < Persona
  @@Alumnos = ["Juan Carlos Hernandez","Juan Perez","Olivia Martinez"]
  def initialize(nombre)
    super(nombre)
  end

  def ver_alumnos
    puts @@Alumnos
  end

  def ver_calificaciones
    puts @nombre
  end

  def calificar_materia

  end
end
juan = Alumno.new("Juan diego larios soto")
