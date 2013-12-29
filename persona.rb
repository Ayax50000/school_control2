class Persona
  require_relative 'materia.rb'
  require_relative 'formatear.rb'
  extend Formato
  attr_reader :nombre
  def initialize(nombre)
    @nombre = Formato.formatear_nombre!(nombre)
  end
  def registrar
    clase = self.class.to_s + "s"
    puts clase
    puts self.nombre
  end
  def asignar(nombre,materia)

  end
  def existe?(nombre)

  end
  def ver_asignaciones!(nombre)

  end
end
persona = Persona.new("pedro larios hinojoza")
persona.registrar
puts $Registro.to_s
