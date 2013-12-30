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
    if $Registrados[clase].include? @nombre
      puts "el alumno #{@nombre} ya esta registrado"
    else
       $Registrados[clase] << @nombre
       puts "#{@nombre} fue registrado correctamente"
    end
  end

  def asignar(nombre,materia)

  end

  def ver_asignaciones!(nombre)

  end

end
#persona = Persona.new("pedro larios hinojoza")
#persona.registrar
#puts $Registro.to_s
