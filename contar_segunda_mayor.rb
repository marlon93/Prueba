puts "Ingrese su frase"
texto = gets.to_s


#texto = "Hola mundo, hola hola mundo! hola el mundo, Mundo hola"
texto = texto.to_s.upcase
texto.gsub!(/\W+/, ' ')


palabras = texto.split(" ")
mihash = Hash.new(0).tap { |h| palabras.each { |palabra| h[palabra] += 1} }

if mihash.count > 1
  nuevo_hash = {}
  mihash.each do |palabra, veces|
    if palabra.size >= 4
      nuevo_hash[palabra] = veces
    end
  end
else
  puts "Solo hay una palabra"
end

cantidades = nuevo_hash.values
valor = cantidades.pop

resultado = "No hubo palabra"

nuevo_hash.each do |k,v|
  if valor == v
    resultado = "'#{k}', con #{valor} veces"
  end
end

puts "La palabra es: #{resultado}"
