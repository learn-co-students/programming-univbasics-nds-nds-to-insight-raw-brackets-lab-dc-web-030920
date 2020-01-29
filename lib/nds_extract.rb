$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  result = {}
  i = 0


  while i < nds.count do
    dir_name = nds[i][:name]
    result[dir_name] = 0
    movie = 0
    while movie < nds[i][:movies].count do
      result[dir_name] += nds[i][:movies][movie][:worldwide_gross]
      movie +=1
    end

    i +=1
  end
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  result
end
