require_relative 'maestro.rb'
require_relative 'alumno.rb'
require_relative 'materia.rb'

def crear_interfaz!
    puts "                        Control Escolar                         "
    5.times{puts ""}
    puts "   que desea realizar ?   "
    puts " para realizar alguna actividad presione el primer valor escrito"
    puts " 1> por ejemplo 1 si esta fuese una opcion y despues enter"
    8.times {puts ""}
    puts "0) ver Materias"
    puts "1) ver Alumnos"
    puts "2) ver Maestros"
    puts "3) ver calificaciones de alumno por materia"
    puts "4) ver maestros que imparten cierta materia"
    puts "5) Registrar Maestro"
    puts "6) asignar Maestro a Materia"
    puts "7) Registrar Materia"
    puts "8) agregar Alumno a Materia"
    puts "9) asignar calificacion a Alumno por Materia"
    puts "10) registrar Alumno"
    puts "s) salir de la Aplicacion"
end
def regresar_principal
    10.times { puts "" }
    puts " presione enter para regresar al menu principal"
    gets
end

orden = "o"
system 'clear'
crear_interfaz!
while orden.chomp != "s"
    orden = gets()
case orden.chomp
when "0" then system 'clear'
  Materia.ver_materias!
  regresar_principal
when "1" then system 'clear'
  Alumno.ver_alumnos
  regresar_principal
when "2" then system 'clear'
  Maestro.ver_maestros
  regresar_principal
when "3" then system 'clear'
  puts "Como se llama el alumno del que quiere ver su calificacion ?"
  nombre = gets
  nuevo = Alumno.new(nombre)
  nuevo.ver_calificaciones
  regresar_principal
when "4" then system 'clear'
  Materia.ver_materias!
  4.times {puts ""}
  puts "escriba con espacios la materia de la cual quiere ver quien la imparte"
  nombre = gets
  materia = Materia.new(nombre)
  materia.quien_imparte?
  regresar_principal
when "5" then system 'clear'
  puts "como se llama el maestro que desea agregar ?"
  nombre = gets
  maestro = Maestro.new(nombre)
  maestro.registrar
  regresar_principal
when "6" then system 'clear'
  puts " como se llama el maestro que desea asignar"
  nombre = gets
  maestro = Maestro.new(nombre)
  maestro.asignar
  regresar_principal
when "7" then system 'clear'
  puts "que materia desea agregar ?"
  nombre = gets
  materia = Materia.new(nombre)
  materia.registrar
  regresar_principal
when "8" then system 'clear'
  puts " como se llama el alumno que desea asignar ?"
  nombre = gets
  alumno = Alumno.new(nombre.chop)
  alumno.asignar
  regresar_principal
when "9" then system 'clear'
  puts " a que alumno desea calificar"
  nombre = gets
  alumno = Alumno.new(nombre.chop)
  alumno.calificar_materia
  regresar_principal
when "10" then system 'clear'
  puts "como se llama el alumno que desea registrar"
  nombre = gets.chomp
  alumno = Alumno.new(nombre)
  alumno.registrar
  regresar_principal
end
    system 'clear'
    crear_interfaz!
end
system 'clear'
