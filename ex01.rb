def archivo(string1, string2)
  file = File.open('ciudades.html', 'w')
  file.puts "<p> #{string1} </p>" 
  file.puts "<p> #{string2} </p>" 
  file.close
end

archivo('Santiago', 'Chile')

def add_list(array)
  
  file = File.open('ciudades.html', 'a') 
  file.puts '<ul>' 
  array.each { |foo| file.puts "<li> #{foo} </li>" }
  file.puts '</ul>'
  return if array.count.zero? 
  file.close 
end

ciudad = %w[Providencia, Huechuraba, La Florida, Maipu, San Joaquin] 

add_list(ciudad)

def agrega_color(color) 
  file = File.open('ciudades.html', 'r')
  lines = file.readlines.map(&:length)
  print lines
end

agrega_color('color')