require_relative 'persona.rb'
class Maestro < Persona
  @@Maestros = ["Juan Carlos Hernandez","Juan Perez","Olivia Martinez"]
  def initialize(nombre)
    super(nombre)
  end

  def ver_maestros
    puts @@Maestros
  end
end
juan = Maestro.new("Juan diego larios soto")
