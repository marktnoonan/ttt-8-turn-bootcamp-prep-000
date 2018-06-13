def turn(board)
  puts "Please enter 1-9:" 

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(n)
  n.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
      true
    else
      false
  end
end