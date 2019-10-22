$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  dir_index = 0
  totals = {}

  while dir_index < nds.length do
    dir_name = nds[dir_index][:name]
    totals[dir_name] = 0
    movie_index = 0

    while movie_index < nds[dir_index][:movies].length do
      totals[dir_name] += nds[dir_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    dir_index += 1
  end

  totals
end