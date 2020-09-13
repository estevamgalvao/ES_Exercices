def rps_game_winner(game)
    #print game, "\n"
    #print game[0][1] - game[1][1], "\n"

    dif = game[0][1] - game[1][1]
    
    if dif == -2 or dif == 1 or dif == 0
        print("Winner: ", game[0][0], "\n")
    else
        print("Winner: ", game[1][0], "\n")
    end
end

def rps_game_input(board_string)
    regex = /\b\p{L}+\d*/
    m = board_string.scan(regex)
    #print m, "\n"

    player1 = Array.new
    player2 = Array.new

    player1.push(m[0])
    player1.push(m[1])
    player2.push(m[2])
    player2.push(m[3])

    #print player1, "\n"
    #print player2, "\n"

    if player1[1].upcase() == 'R'
        player1[1] = 1
    elsif player1[1].upcase() == 'P'
        player1[1] = 2
    else
        player1[1] = 3
    end

    if player2[1].upcase() == 'R'
        player2[1] = 1
    elsif player2[1].upcase() == 'P'
        player2[1] = 2
    else
        player2[1] = 3
    end

    #print player1, "\n"
    #print player2, "\n"
    return [player1, player2]

end

#rps_game_winner(rps_game_input("[ [ Kristen, P ], [ Pam, S ] ]"))

rps_game_winner(rps_game_input(gets.chomp))
