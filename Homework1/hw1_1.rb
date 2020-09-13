def palindrome?(string)
    
    # Regex to identify only digits or alphabetic and ignoring blanks
    string_re = /\ws*/
    #string_re = /\p{L}\d*\s*/
    # Getting the matchs into a list
    m = string.scan(string_re)
    #print(m, "\n")
    # Removing the "_" that "\w" allow to pass
    m.keep_if{ |v| v =~ /[^_]/ }
    #print(m,"\n")
    # Converting the array into a result string ['a','m','o','r'] -> 'amor'
    string = m.join()
    # "Making" upcases or lowercases irrelevant
    string = string.upcase

    if string == string.reverse
        return true
    end
    return false

end

def count_words(string)

    hash = Hash.new
    # Regex to identify only latins and numeric digits that is in "word boundarys" \b
    string_re = /\b\p{L}+\d*/

    m = string.scan(string_re)
    
    # Removing the "nil" that scan seems to had been puting in the array
    #m.keep_if{ |v| v =~ /[\S]/} # Actually, this can be solved by replacing \p{L}* to \p{L}+ on regex

    # Fulling the hash {"word" => times_word_appear}
    m.each do |e|
        element_times = m.count(e)
        hash[e] = element_times
    end

    #print(hash, "\n")
    #print(m, "\n")
    return hash

end



print("Insira o palíndromo a ser verificado:\n")
palindrome?(gets.chomp) ? puts("É palíndromo") : puts("Não é palíndromo")

print("\nInsira a string a ser contada:\n")
hash = count_words(gets.chomp)
print(hash, "\n")