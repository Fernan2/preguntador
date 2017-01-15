require 'logger'

REFACTORING = {
  1 => 'extract method',
  2 => 'inline method'
}

puts '¿Cuáles son los refactors que describe Martin Fowler en su libro "Refactoring"?'
log = Logger.new('preguntador.log')

REFACTORING.each do |orden, nombre|
  print "#{orden}: "
  respuesta = gets.to_s.strip.downcase
  if respuesta != nombre
    log.error("Fallo en  #{nombre.upcase}")
    abort "ERROR: Era #{nombre.upcase}"
  end
end

log.info('Correcto!')
puts "OK!"
