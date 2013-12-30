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
    puts "1) ver Maestros"
    puts "2) ver Alumnos"
    puts "3) ver calificaciones de alumno por materia"
    puts "5) ver maestros que imparten cierta materia"
    puts "6) agregar Maestro"
    puts "7) asignar Maestro a Materia"
    puts "8) agregar Materia"
    puts "9) agregar Alumno a Materia"
    puts "a) asignar calificacion a Alumno por Materia"
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
    escuela.ver_maestros!
    escuela.regresar_principal
when "2" then system 'clear'
    escuela.ver_alumnos!
    escuela.regresar_principal
when "3" then system 'clear'
    puts "Como se llama el alumno del que quiere ver su calificacion ?"
    nombre = gets
    puts "De que materia quiere ver la calificacion ?"
    materia = gets
    escuela.calificacion_por_materia nombre,materia
    escuela.regresar_principal
when "4" then system 'clear'
    puts "como se llama el alumno del cual quiere ver sus calificaciones ?"
    nombre = gets
    escuela.calificaciones_de nombre
    escuela.regresar_principal
when "5" then system 'clear'
    puts "de que materia quiere ver los maestros ?"
    materia = gets
    escuela.quien_imparte? materia
    escuela.regresar_principal
when "6" then system 'clear'
    puts "como se llama el maestro que desea agregar ?"
    nombre = gets
    escuela.agregar_maestro! nombre
    escuela.regresar_principal
when "7" then system 'clear'
    puts " como se llama el maestro que desea asignar"
    nombre = gets
    puts " que materia impatira #{nombre.chomp} ?"
    materia = gets
    escuela.asignar_profesor! nombre , materia
    escuela.regresar_principal
when "8" then system 'clear'
    puts "que materia desea agregar ?"
    materia = gets
    escuela.agregar_materia! materia
    escuela.regresar_principal
when "9" then system 'clear'
    puts " como se llama el alumno que desea asignar ?"
    nombre = gets
    puts " a que materia desea asignarlo ?"
    materia = gets
    escuela.asignar_alumno_materia nombre, materia
    escuela.regresar_principal
when "a" then system 'clear'
    puts " a que alumno desea calificar"
    nombre = gets
    puts " para que materia es la calificacion"
    materia = gets
    puts " cual es la calificacion"
    nota = gets.to_f
    escuela.calificar_alumno_materia! nombre ,materia , nota
    escuela.regresar_principal
end
    system 'clear'
    escuela.crear_interfaz_principal!
end
system 'clear'
