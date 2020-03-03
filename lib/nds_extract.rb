$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  row_index = 0
  while row_index < nds.length do
    column_index = 0
    grand_total = 0
    while column_index < nds[row_index][:movies].length do

      grand_total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    key = nds[row_index][:name]
    result[key] = grand_total
    row_index += 1
  end
  puts result
  result
end
