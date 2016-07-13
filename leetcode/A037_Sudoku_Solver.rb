# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
$used = []
9.times { |i| $used[i] = false }

def solve_sudoku(board)
    nb = []
    for i in 0...9
        nb[i] = []
    	for j in 0...9
    	    if (board[i][j] != '.')
                nb[i][j] = board[i][j].to_i
    		else
                nb[i][j] = 0
    		end
    	end
    end
    solve(nb, board, 0);

    for i in 0...9
        for j in 0...9
            board[i][j] = nb[i][j].to_s
        end
    end
end

def solve(board, preset, level)
	if level == 81; return true; end
	
	row = level / 9; col = level % 9
	box = (row / 3) * 3 + (col / 3)
	
	if preset[row][col] != '.'
		if solve(board, preset, level + 1)
		    return true
	    end
		return false;
	end
	
	for i in 0...9
		board[row][col] = i + 1
		if !checkRow(board, row) || !checkCol(board, col) || !checkBox(board, box)
		    next
		end
		if solve(board, preset, level + 1)
		    return true
		end
	end
	board[row][col] = 0
	return false;
end

def checkRow(board, row)
    #used = []
    9.times { |i| $used[i] = false }
    for i in 0...9
        if (board[row][i] == 0); next; end
        if ($used[board[row][i] - 1])
            return false
        end
        $used[board[row][i] - 1] = true
    end
    return true
end
def checkCol(board, col)
	#used = []
    9.times { |i| $used[i] = false }
    for i in 0...9
        if (board[i][col] == 0); next; end
        if ($used[board[i][col] - 1])
            return false
        end
        $used[board[i][col] - 1] = true
    end
    return true;
end
def checkBox(board, box)
	#used = []
    9.times { |i| $used[i] = false }
    startRow = (box / 3) * 3
    startCol = (box % 3) * 3;
    for i in startRow...startRow + 3
        for j in startCol...startCol + 3
            if (board[i][j] == 0); next; end
            if ($used[board[i][j] - 1])
                return false
            end
            $used[board[i][j] - 1] = true;
        end
    end
    return true
end

def time_diff_milli(start, finish)
   (finish - start) * 1000.0
end

input = [".....7..9",".4..812..","...9...1.","..53...72","293....5.",".....53..","8...23...","7...5..4.","531.7...."]
board = []
for i in 0...9
	board[i] = []
	for j in 0...9
		board[i][j] = input[i][j]
	end
end

t1 = Time.now
solve_sudoku(board)
t2 = Time.now

msecs = time_diff_milli t1, t2
puts "Time used: " + msecs.to_s[0...10] + "ms"

for i in 0...9
	for j in 0...9
		print (board[i][j] + " ")
	end
	print ("\n")
end

