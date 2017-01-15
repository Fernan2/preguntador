REFACTORING = {
  1 => 'extract method',
  2 => 'inline method'
}

REFACTORING.each do |orden, nombre|
  print "#{orden}: "
  respuesta = gets.to_s.strip.downcase
  if respuesta != nombre
    abort "ERROR: Era #{nombre.upcase}"
  end
end

puts "OK!"
