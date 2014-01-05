require 'rspec/given'
require './conway_game_of_life'

describe ConwayGameOfLife do
  
  Given(:still_life) {[
    [false, false, false, false],
    [false, true, true, false],
    [false, true, true, false],
    [false, false, false, false]
    ]}

  Given(:oscillator1) {[
    [false, false, false, false, false],
    [false, false, false, false, false],
    [false, true, true, true, false],
    [false, false, false, false, false],
    [false, false, false, false, false]
    ]}

  Given(:oscillator2) {[
    [false, false, false, false, false, false],
    [false, false, false, false, false, false],
    [false, false, true, true, true, false],
    [false, true, true, true, false, false],
    [false, false, false, false, false, false],
    [false, false, false, false, false, false]
    ]}

  def populate(n)
    game.populate(n)
    game.last_board
  end

  context 'still lifes' do
    Given(:game) { ConwayGameOfLife.new(still_life) }
      
    Then { expect(populate(3)).to eq(still_life) }
    Then { expect(populate(10)).to eq(still_life) }
  end

  context 'oscillators1' do
    Given(:game) { ConwayGameOfLife.new(oscillator1) }

    Then { expect(populate(9)).to eq(oscillator1.transpose) }
    Then { expect(populate(20)).to eq(oscillator1) }
  end

  context 'oscillators2' do
    Given(:game) { ConwayGameOfLife.new(oscillator2) }

    Then { expect(populate(8)).to eq(oscillator2) }
  end

end