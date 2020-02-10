$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# require 'pp'
require 'pry'

def directors_totals(nds)
  directors_hash = {}
  row_index = 0
  while row_index < nds.length do
  # binding.pry
    column_index = 0
    directors_total = 0
    director_name = nds[row_index][:name] 
    directors_hash[director_name] = 0
    inner_length = nds[row_index][:movies].length
    inner_index = 0
      while inner_index < inner_length do
        directors_total += nds[row_index][:movies][inner_index][:worldwide_gross]
        directors_hash[director_name] = directors_total
        inner_index += 1
      end
    column_index += 1
  # puts directors_total
  row_index += 1
  end
  directors_hash
end