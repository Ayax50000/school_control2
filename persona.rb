class Persona
  require_relative 'materia.rb'
  require_relative 'formatear.rb'
  extend Formato
  attr_reader :nombre
  def initialize(nombre)
    @nombre = Formato.formatear_nombre!(nombre)
    @clase = self.class.to_s + "s"
  end
  def registrar
    if $Registrados[@clase].include? @nombre
      puts "el alumno #{@nombre} ya esta registrado"
    else
       $Registrados[@clase] << @nombre
       puts "#{@nombre} fue registrado correctamente"
    end
  end

  def asignar
    if  ($Registrados[@clase].include? @nombre.chop) then
      puts "a que materia desea asignar a #{@nombre}"
      materia = gets
      subject = Materia.new(materia)
      if subject.existe_materia? then

        if @clase == "Maestros" then
          if $Registro[subject.materia][:Maestros].inlude? @nombre then
            puts "ya se enuentra asignado"
          else
            $Registro[subject.materia][:Maestros] << @nombre
            puts "asignado correctamente"
          end
        end

        if @clase == "Alumnos" then
          asignado = false
          $Registro[subject.materia][:Alumnos].each do |estudiante|
                asignado = true if estudiante[:Nombre] == @nombre
          end
          if asignado == false then
            $Registro[subject.materia][:Alumnos] << {:Nombre=> @nombre ,:Calificacion=>0.0}
            puts "Alumno #{@nombre} correctamente asignado a #{materia}"
          else
            puts "Alumno #{@nombre} ya esta asignado a #{materia}"
          end
        end

      else
        puts "la materia #{materia} no existe"
      end
    else
      puts "no esta registrado #{@nombre}"
    end
  end

  def ver_asignaciones!(nombre)

  end

end
#persona = Persona.new("pedro larios hinojoza")
#persona.registrar
#puts $Registro.to_s
