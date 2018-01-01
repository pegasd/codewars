#!/usr/bin/env ruby

def count_neighbors(cells, pos_x, pos_y)
  live_neighbors = 0
  for new_x in [pos_x - 1, pos_x, pos_x + 1]
    for new_y in [pos_y - 1, pos_y, pos_y + 1]
      next if new_x < 0 || new_y < 0 # Skip negative boundaries
      next if new_x > cells.count # Skip positive boundaries [x]
      next if new_y > cells[0].count # Skip positive boundaries [y]
      next if new_x == pos_x && new_y == pos_y # Skip when we're at current position
      next unless cells[new_x]
      next unless cells[new_x][new_y]
      live_neighbors += 1 if cells[new_x][new_y] == 1
    end
  end
  live_neighbors
end

def am_i_alive(cells, pos_x, pos_y)
  cells[pos_x][pos_y] == 1 ? true : false
end

def will_i_live(cells, pos_x, pos_y)
  alive          = am_i_alive(cells, pos_x, pos_y)
  live_neighbors = count_neighbors(cells, pos_x, pos_y)


  action = ''
  case live_neighbors
  when 2, 3
    action = 'stay alive' if alive
    unless alive
      if live_neighbors == 3
        action = 'be born'
      else
        action = 'stay dead'
      end
    end
  else
    action = 'die' if alive
    action = 'stay dead' unless alive
  end

  case action
  when 'stay alive', 'be born'
    return 1
  when 'die', 'stay dead'
    return 0
  else
    raise ArgumentError
  end
end

def next_gen cells
  new_generation = [].fill(0...cells.size) { [].fill(0...cells[0].size) { 0 } }
  new_generation.each_with_index do |row, x|
    row.each_with_index do |_, y|
      new_generation[x][y] = will_i_live(cells, x, y)
    end
  end
end
