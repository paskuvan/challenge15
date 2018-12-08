def ver_stocks
  lines = File.open('stocks.txt', 'r').readlines
  new_lines = []
  lines.each { |line| new_lines.push(line.split(', ').map(&:chomp)) }

  new_lines.each do |details|
    name = details.shift
    sum = get_sum(details)
    puts "El stock del producto #{name} es #{sum}"
  end
end

def get_sum(details)
  sum = 0
  details.each do |ele|
    unless ele == 'NR'
      sum += ele.to_i
    end
  end
  return sum
end

option = 0

puts 'Sistema de inventario', "\n"

while option
  puts 'Ingrese:', "\n"
  puts '1 para mostrar la cantidad de productos existentes.'
  puts '2 para mostrar la cantidad de stock de un producto.'
  puts '3 para mostrar los productos no registrados.'
  puts '4 para mostrar los productos con un stock menor al ingresado.'
  puts '5 para registrar un nuevo producto.'
  puts '6 para salir.'

  option = gets.to_i

  case option

  when 1
    second_option = 0
    
    puts 'Elija opcion a, b, c o d. Presione x para salir.', "\n"

    while second_option
      puts "a) Mostrar la existencia por productos.\n"
      puts "b) Mostrar la existencia total por tienda.\n"
      puts "c) Mostrar la existencia total en todas las tiendas.\n"
      puts "d) Volver al menú principal.\n"

      second_option = gets.chomp

      case second_option
      when 'a'
        puts 'Eligió a.', "\n"
      when 'b'
        puts 'Eligió b.', "\n"
      when 'c'
        puts 'Eligió c.', "\n"
      when 'd'
        exit
      else
        puts 'La opción no es valida vuelva a intentarlo.', "\n"
      end
    end

  when 2
    puts '2', "\n"

  when 3
    puts '3', "\n"

  when 4
    puts '4', "\n"

  when 5
    puts '5', "\n"

  when 6
    puts 'Salir', "\n"
    exit

  else
    puts 'La opción que ingresaste no es válida. Vuelve a intentarlo'
  end
end