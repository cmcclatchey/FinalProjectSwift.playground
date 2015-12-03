import UIKit

greetingDisplay()

let X = 1
let O = 2
let EMPTY = 3

var rows = 3 // Num rows
var columns = 3 // Num columns

var board = [[Int]]() // 2d Array to make board

var blankFound = false
var i = 0
var gameOver = false

var move1 = [Int]()
var move2 = [Int]()
var move3 = [Int]()

/* Make your moves here */
move1.append(3) // Space 1
move1.append(3) // Space 2
move1.append(3) // Space 3
move2.append(3) // Space 4
move2.append(3) // Space 5
move2.append(3) // Space 6
move3.append(3) // Space 7
move3.append(3) // Space 8
move3.append(3) // Space 9

board.append(move1)
board.append(move2)
board.append(move3)


for var row = 0; row < rows; row++ // Makes the rows
{
    for var col = 0; col < columns; col++ // Makes the columns
    {
        fillSpace(board[row][col])
        if (col != columns - 1)
        {
            print("|")
        }
    }
    println()
    if (row != rows - 1)
    {
        println("-----------")
    }
}


func fillSpace(letterOrEmpty: Int) -> Int // X, O, or empty space
{
    switch letterOrEmpty
    {
    case X:
        print(" X ")
    case O:
        print(" O ")
    default:
        print("   ")
    }
    return letterOrEmpty
}

println()

endGameX() // Checks for X winning
endGameO() // Checks for O winning

func endGameX()
{
    if (board[0][0]  == X && board[0][1] == X && board[0][2] == X) // Row
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[1][0]  == X && board[1][1] == X && board[1][2] == X) // Row
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[2][0]  == X && board[2][1] == X && board[2][2] == X) // Row
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[0][0]  == X && board[1][0] == X && board[2][0] == X) // Column
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[0][1]  == X && board[1][1] == X && board[2][1] == X) // Column
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[0][2]  == X && board[1][2] == X && board[2][2] == X) // Column
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[0][0]  == X && board[1][1] == X && board[2][2] == X) // Diagonal
    {
        println("Player X has won");
        gameOver = true;
    }
    else if (board[0][2]  == X && board[1][1] == X && board[2][0] == X) // Other diagonal
    {
        println("Player X has won");
        gameOver = true;
    }
}


func endGameO()
{
    if (board[0][0]  == O && board[0][1] == O && board[0][2] == O) // Row
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[1][0]  == O && board[1][1] == O && board[1][2] == O) // Row
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[2][0]  == O && board[2][1] == O && board[2][2] == O) // Row
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[0][0]  == O && board[1][0] == O && board[2][0] == O) // Column
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[0][1]  == O && board[1][1] == O && board[2][1] == O) // Column
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[0][2]  == O && board[1][2] == O && board[2][2] == O) // Column
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[0][0]  == O && board[1][1] == O && board[2][2] == O) // Diagonal
    {
        println("Player O has won");
        gameOver = true;
    }
    else if (board[0][2]  == O && board[1][1] == O && board[2][0] == O) // Other diagonal
    {
        println("Player O has won");
        gameOver = true;
    }
}

for var i = 0; i < 3; i++ // Determines a tie
{
    for var j = 0; j < 3; j++
    {
        if board[i][j] == EMPTY
        {
            blankFound = true
        }
    }
}

if blankFound == false && gameOver == false // If conditions met, shows tie
{
    println("The game has ended in a tie")
}


func greetingDisplay()
{
    println("* * * * * * * * * * * * * * * * * * * * * * * * * * * *");
    println("*                                                     *");
    println("*   ------------   ------------    ------             *");
    println("*         |             |         -      -            *");
    println("*         |             |        -                    *");
    println("*         |             |       -               ---   *");
    println("*         |             |        -                    *");
    println("*         |             |         -      -            *");
    println("*                  ------------    ------             *");
    println("*                                                     *");
    
    println("*   ------------                   ------             *");
    println("*         |            /\\         -      -            *");
    println("*         |           /  \\       -                    *");
    println("*         |          /    \\     -               ---   *");
    println("*         |         /------\\     -                    *");
    println("*         |        /        \\     -      -            *");
    println("*                 /          \\     ------             *");
    println("*                                                     *");
    
    println("*   ------------  ------------   ------       |  |    *");
    println("*         |       |          |   |            |  |    *");
    println("*         |       |          |   |            |  |    *");
    println("*         |       |          |   |---         |  |    *");
    println("*         |       |          |   |            |  |    *");
    println("*         |       |          |   |                    *");
    println("*                 ------------   ------       o  o    *");
    println("*                                                     *");
    println("* * * * * * * * * * * * * * * * * * * * * * * * * * * *\n");
}

