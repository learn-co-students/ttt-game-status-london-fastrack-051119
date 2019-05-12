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

def won(board)
  WIN_COMBINATIONS.each do |winning_combination|
    winning_combination.each do |winning_positions|
      if winning_positions == "" && winning_positions == "" && winning_positions == ""
        return false
      end
    end
  end

end
