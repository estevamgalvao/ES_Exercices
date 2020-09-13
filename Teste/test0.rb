def test 

    x = "Mundo"
 
    yield("Olá")
 
 end
 
 x = "Ruby"
 
 result = test { |y| puts "#{y} #{x}" }