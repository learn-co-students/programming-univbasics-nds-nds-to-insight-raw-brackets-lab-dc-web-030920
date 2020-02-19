$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # pp directors_database
  # Use loops, variables and the accessing method, [], to loop through the NDS
  
  result = {}
  row = 0
  #getting the name as key for result
  while row < directors_database.length do 
    name = directors_database[row][:name]
    puts name
    total = 0
    inner_row =0 
    while inner_row < directors_database[row][:movies].length do
      total += directors_database[row][:movies][inner_row][:worldwide_gross]
      inner_row += 1
    end
    result[name] = total
    row += 1
  end
  result

  
end
