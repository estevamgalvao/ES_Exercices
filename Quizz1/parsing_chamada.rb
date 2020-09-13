steste = "                        17/0112209    OSCAR ETCHEAVERRY BARBOSA MADUREIRA DA
SILVAdas"

alunos = Array.new
arq = File.open("engsoft.txt", "r")


string = arq.readlines()
puts string.class()

matricula_re = /(\d{2})+\/+(\d{7})+\s+(.*)+(\n[A-Z]{5}?)/

m = matricula_re.match(steste)

alunos.insert(0, m)



string.each do |e|
    
    m = matricula_re.match(e)
    #gets
    
#    puts e.class
 #   gets

    #alunos.pop(m)    
end

puts(alunos)

[1, 2, 3].each do |n|
    text = "Current number is: #{n}"
    puts text
  end