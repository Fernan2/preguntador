require 'logger'

REFACTORING = {
  1 => 'extract method',
  2 => 'inline method',
  3 => 'inline temp',
  4 => 'replace temp with query',
  5 => 'introduce explaining variable'
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

log.info("#{REFACTORING.size} respuestas correctas!")
puts "OK!"
