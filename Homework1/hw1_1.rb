def palindrome?(string)
    
    # Regex for identifyng only digits or alphabetic and ignoring blanks
    string_re = /\ws*/
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

puts(palindrome?(gets.chomp))