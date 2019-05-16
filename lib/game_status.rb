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
  WIN_COMBINATIONS.each do |winning_positions|
    if winning_positions.all? {|game_square| board[game_square] == "X"} || winning_positions.all? {|game_square| board[game_square] == "O"}
       return winning_positions
    end
  end
   false
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
  if !won?(board)
      return nil
  elsif board[won?(board)[0]] && board[won?(board)[1]] && board[won?(board)[2]] == "X"
      return "X"
  elsif board[won?(board)[0]] && board[won?(board)[1]] && board[won?(board)[2]] == "O"
      return "O"
  end
end
