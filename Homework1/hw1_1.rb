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
    string_re = /\b\p{L}*\d*/

    m = string.scan(string_re)
    # Removing the "nil" that scan seems to had been puting in the array
    m.keep_if{ |v| v =~ /[\S]/}
    # Fulling the hash {"word" => times_word_appear}
    m.each do |e|
        element_times = m.count(e)
        hash[e] = element_times
    end
    
    print(hash, "\n")
    print(m, "\n")
    return hash

end



#puts(palindrome?(gets.chomp))

count_words('amanha aa a aa a é é dia')