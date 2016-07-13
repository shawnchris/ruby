# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    for i in 0...9
        if !checkRow(board, i) || !checkCol(board, i) || !checkBox(board, i)
            return false;
        end
    end
    return true;
end

def checkRow(board, row)
    used = []
    9.times { |i| used[i] = false }
    for i in 0...9
        if (board[row][i] == '.'); next; end
        if (used[board[row][i].to_i])
            return false
        end
        used[board[row][i].to_i] = true
    end
    return true
end
def checkCol(board, col)
	used = []
    9.times { |i| used[i] = false }
    for i in 0...9
        if (board[i][col] == '.'); next; end
        if (used[board[i][col].to_i])
            return false
        end
        used[board[i][col].to_i] = true
    end
    return true;
end
def checkBox(board, box)
	used = []
    9.times { |i| used[i] = false }
    startRow = (box / 3) * 3
    startCol = (box % 3) * 3;
    for i in startRow...startRow + 3
        for j in startCol...startCol + 3
            if (board[i][j] == '.'); next; end
            if (used[board[i][j].to_i])
                return false
            end
            used[board[i][j].to_i] = true;
        end
    end
    return true
end

board = [['.', '8', '7', '6', '5', '4', '3', '2', '1'], 
['2', '.', '.', '.', '.', '.', '.', '.', '.'], 
['3', '.', '.', '.', '.', '.', '.', '.', '.'], 
['4', '.', '.', '.', '.', '.', '.', '.', '.'], 
['5', '.', '.', '.', '.', '.', '.', '.', '.'], 
['6', '.', '.', '.', '.', '.', '.', '.', '.'], 
['7', '.', '.', '.', '.', '.', '.', '.', '.'], 
['8', '.', '.', '.', '.', '.', '.', '.', '.'], 
['9', '.', '.', '.', '.', '.', '.', '.', '.']]

puts is_valid_sudoku(board)