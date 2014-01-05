require './conway_game_of_life'
require './console_visualizer'
require './boring_visualizer'

initial_state1 = [
    [false, false, false, false, false],
    [false, false, false, false, false],
    [false, true, true, true, false],
    [false, false, false, false, false],
    [false, false, false, false, false]
    ]

initial_state2 = [
    [false, false, false, false, false, false],
    [false, false, false, false, false, false],
    [false, false, true, true, true, false],
    [false, true, true, true, false, false],
    [false, false, false, false, false, false],
    [false, false, false, false, false, false]
    ]

initial_state3 = [[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,false,false,true,true,true,false,false,false,true,true,true,false,false,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,false,false,true,true,true,false,false,false,true,true,true,false,false,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,false,false,true,true,true,false,false,false,true,true,true,false,false,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,true,false,false,false,false,true,false,true,false,false,false,false,true,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,false,false,true,true,true,false,false,false,true,true,true,false,false,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
      [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]]

game = ConwayGameOfLife.new(initial_state3)
game.populate(10)
game.visualizer = ConsoleVisualizer.new
game.visualize

