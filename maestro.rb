require_relative 'persona.rb'
class Maestro < Persona

  def initialize(nombre)
    super(nombre)
  end

  def self.ver_maestros
    puts $Registrados["Maestros"]
  end

end
