string = "Meu telefone é (123) 555-1234. (123) 445-5646"
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)
unless m
  puts "Não houve casamento..."
  exit
end
print "Toda a string com que começamos: "
puts m.string
print "Toda a parte da string que foi casada: "
puts m
puts "As três capturas: "
3.times do |index|
  puts "Captura ##{index + 1}: #{m.captures[index]}"
end
puts "Outro jeito de conseguir a primeira captura:"
print "Captura #1: "
puts m[1]