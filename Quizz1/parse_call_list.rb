steste = "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|       |        |             |                                            |              |              |                |               |               |               |                |               |
|       |        |             |                                            |              |              |                |               |               |               |                |               |
                  17/0061001    LUCAS VINICIUS MAGALHÃES PINHEIRO

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|       |        |             |                                            |              |              |                |               |               |               |                |               |
|       |        |             |                                            |              |              |                |               |               |               |                |               |
                  17/0112209    OSCAR ETCHEAVERRY BARBOSA MADUREIRA DA
                                SILVA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"

# r:ISO-8859-1:UTF-8 to avoid UTF8 error
arq = File.open("engsoft.txt", "r:ISO-8859-1:UTF-8")

alunos = Array.new

arq_lines = arq.readlines()
#puts arq_lines.class()

# Setting up my regex to match -> 17/0061001    LUCAS VINICIUS MAGALHÃES PINHEIRO

matricula_re = /(\d{2}\/\d{7})\s(.*)/

# Trying to find matchs for each line in the call list file
arq_lines.each do |e|
#    puts e
#    gets
    m = matricula_re.match(e)
    # Looks like match function nil return when dont match can push
    #in the array anyways, so the if avoid that
    if m 
        alunos.push(m)
        puts m
#        gets
    end
end

print alunos

=begin
# Trying to fix "DA SILVA" problem
matricula_re = /\d{2}\/\d{7}\s.*\n(?<!\s)[A-Z]*/#([A-Z]{5}?)/
arq_text = arq.read()

m = steste.scan(matricula_re)

print m
=end