module Formato
  def self.formatear_nombre!(nombre)
    capitalizado = ""
    frase = nombre.split
    frase.each { |palabra| capitalizado << palabra.capitalize + " "}
    capitalizado
  end
  def self.formatear_materia!(materia)
    capitalizado = formatear_nombre! materia
    capitalizado.gsub(" ","").to_sym
  end
end
