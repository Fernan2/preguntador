REFACTORING = {
  1 => 'extract method',
  2 => 'inline method'
}

puts '¿Cuáles son los refactors que describe Martin Fowler en su libro "Refactoring"?'

REFACTORING.each do |orden, nombre|
  print "#{orden}: "
  respuesta = gets.to_s.strip.downcase
  if respuesta != nombre
    abort "ERROR: Era #{nombre.upcase}"
  end
end

puts "OK!"
