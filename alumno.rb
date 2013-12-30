require_relative 'persona.rb'
class Alumno < Persona

  def initialize(nombre)
    super(nombre)
  end

  def self.ver_alumnos
    puts $Registrados["Alumnos"]
  end


  def ver_calificaciones
    if $Registrados["Alumnos"].include? @nombre.chop
      puts "con palabras separadas escriba la materia de la que quiere ver calificaciones"
      Materia.ver_materias!
      3.times {puts ""}
      subject = gets
      materia = Materia.new(subject)
      if materia.existe_materia?
        if materia.tiene_alumno? @nombre.chop
          materia.ver_calificacion_de @nombre.chop
        else
          puts "el alumno #{@nombre} no esta asignado a #{subject}"
        end
      else
        puts "la materia #{subject} no existe"
      end
    else
      puts "#{@nombre} no se encuentra registrado"
    end
  end

  def calificar_materia
    if $Registrados["Alumnos"].include? @nombre.chop
      puts "con palabras separadas escriba la materia en la cual quiere poner calificacion a #{@nombre.chop}"
      Materia.ver_materias!
       3.times {puts ""}
      subject = gets
      materia = Materia.new(subject)
      if materia.existe_materia?
        if materia.tiene_alumno? @nombre
          puts "escriba la calificacion"
          calificacion = gets.to_f
          materia.calificar(@nombre.chop,calificacion)
          puts "#{calificacion} asignado a #{@nombre} en #{subject}"
        else
          puts "el alumno #{@nombre} no esta asignado a #{subject}"
        end
      else
        puts "la materia #{subject} no existe"
      end
    end
  end

end
