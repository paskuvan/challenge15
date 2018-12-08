def conta(file_open)
  file = File.open(file_open, 'r') 
  lines.each do |string|
    conta = string.split(' ').map(&:length)
    puts contas
  end
end

conta('peliculas.txt') 