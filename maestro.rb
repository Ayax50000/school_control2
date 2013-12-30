require_relative 'persona.rb'
class Maestro < Persona

  def initialize(nombre)
    super(nombre)
  end

  def ver_maestros
    puts $Registrados["Maestros"]
  end

end
juan = Maestro.new("Juan diego larios soto")
juan.registrar
