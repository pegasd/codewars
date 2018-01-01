require_relative '../conways-game-of-life'

blinker = [[0, 1, 0],
  [0, 1, 0],
  [0, 1, 0]]

blinker_solution = [[0, 0, 0],
  [1, 1, 1],
  [0, 0, 0]]

describe 'conways-game-of-life' do
  context '#count_neighbors' do
    it 'blinker middle cell has 2 neighbors' do
      expect(count_neighbors(blinker, 1, 1)).to eq(2)
    end

    it 'blinker corner cell has 2 neighbors' do
      expect(count_neighbors(blinker, 0, 0)).to eq(2)
    end

    it 'blinker tail has 1 neighbor' do
      expect(count_neighbors(blinker, 0, 1)).to eq(1)
    end

    it 'blinker dead tail has 3 neighbors' do
      expect(count_neighbors(blinker, 1, 0)).to eq(3)
    end
  end

  context '#am_i_alive' do
    it 'calculates alive cell correctly' do
      expect(am_i_alive(blinker, 0, 1)).to eq(true)
    end

    it 'calculates dead cell correctly' do
      expect(am_i_alive(blinker, 0, 0)).to eq(false)
    end
  end

  context '#will_i_live' do
    it 'blinker middle cell stays alive' do
      expect(will_i_live(blinker, 1, 1)).to eq(1)
    end

    it 'blinker corner cell stays dead' do
      expect(will_i_live(blinker, 0, 0)).to eq(0)
    end

    it 'blinker tail dies' do
      expect(will_i_live(blinker, 0, 1)).to eq(0)
    end

    it 'blinker new tail is born' do
      expect(will_i_live(blinker, 1, 0)).to eq(1)
    end
  end

  context '#next_gen' do
    it 'works with empty array' do
      expect(next_gen([])).to eq([])
    end

    it 'parses blinker correctly' do
      expect(next_gen(blinker)).to eq(blinker_solution)
    end
  end
end
