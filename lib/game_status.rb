# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]


def won?(board)
  # if board.all? {|board_positions| board_positions == " "}
  #   false
  # end
  # elsif board.select.with_index {|board_positions, index|
  #     board_positions == "X" or "O" && index == WIN_COMBINATIONS.select {|winning_combination|
  #     winning_combination.select {|winning_position| winning_position}}}
  #     return WIN_COMBINATIONS[0]
  WIN_COMBINATIONS.each do |winning_positions|
    if winning_positions.all? {|game_square| board[game_square] == "X"} || winning_positions.all? {|game_square| board[game_square] == "O"}
      return winning_positions
    end
  end
  return false
end

def full?(board)
  board.none? {|game_square| game_square == " "}
end

def draw?(board)
  if full?(board) && won?(board)
    false
  elsif !full?(board) && !won?(board)
    false
  elsif full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if full?(board) || draw?(board) || won?(board)
    return true
  end
end

def winner(board)
  if over?(board) == true && won?(board) == false
     nil
  elsif won?(board)[0] && won?(board)[1] && won?(board)[2] == "X"
     return "X"
  elsif won?(board)[0] && won?(board)[1] && won?(board)[2] == "O"
    return "O"
  end
end
