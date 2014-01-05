class Rule

  def initialize(block)
    @block = block
  end

  def evaluate(cell, alive_neighbours_count)
    @block.call cell, alive_neighbours_count
  end

  # rules must cover all cases explicitly, order is not important
  def self.rules_for_conway_game_of_life
  	rules = []
    rules << Rule.new(Proc.new { |cell, alive_neighbours_count| 
      true if alive_neighbours_count == 3
    })
    rules << Rule.new(Proc.new { |cell, alive_neighbours_count| 
      cell if alive_neighbours_count == 2
    })
    rules << Rule.new(Proc.new { |cell, alive_neighbours_count| 
      false if alive_neighbours_count < 3 || alive_neighbours_count > 2
    })
  end

end