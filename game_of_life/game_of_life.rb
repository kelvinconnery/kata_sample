require 'pry'

class GameOfLife

  attr_reader :boards
  attr_accessor :visualizer

  def initialize(initial_state)
    @boards = []
    @boards << initial_state || Array.new(n) { Array.new(n, true) }
  end

  def populate(n)
    n.downto(1) { tick }
  end

  def visualize
    @visualizer.visualize(@boards) if @visualizer
  end

  def last_board
    @boards.last
  end

  class << self
    protected :new
  end

  private

  def tick
    new_board = Array.new(board_size) { Array.new(board_size, false) }
    last_board.each_with_index do |e, row|
      e.each_with_index do |cell, col|
        @rules.each do |rule|
          new_board[row][col] ||= rule.evaluate(cell, get_alive_neighbours_count_for_cell(row, col))
        end
      end
    end
    @boards << new_board
  end

  def get_alive_neighbours_count_for_cell(row, col)
    indices = {
      top_left:      [ row - 1, col - 1 ],
      top_right:     [ row - 1, col + 1 ],
      bottom_left:   [ row + 1, col - 1 ],
      bottom_right:  [ row + 1, col + 1 ],
      top:           [ row - 1, col ],
      bottom:        [ row + 1, col ],
      left:          [ row, col - 1],
      right:         [ row, col + 1]
    }

    if row == 0
      indices.delete(:top_left) 
      indices.delete(:top_right) 
      indices.delete(:top)
    end
    
    if row == board_size - 1
      indices.delete(:bottom_left) 
      indices.delete(:bottom_right) 
      indices.delete(:bottom)
    end

    if col == 0
      indices.delete(:top_left) 
      indices.delete(:bottom_left) 
      indices.delete(:left)
    end
    
    if col == board_size - 1
      indices.delete(:top_right) 
      indices.delete(:bottom_right) 
      indices.delete(:right)
    end

    indices.map { |k, v| last_board[v.first][v.last] }.select { |e| e }.count
  end

  def board_size
    @boards.last.size
  end

end