require './game_of_life'
require './rule'

class ConwayGameOfLife < GameOfLife

  def initialize(initial_state)
    super
    @rules = Rule.rules_for_conway_game_of_life
  end

  def self.new(initial_state) super; end

end