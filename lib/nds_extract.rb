$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  i = 0
  
  while i < nds.length
    director = nds[i]
    name = director[:name]
    movies = director[:movies]
    total = 0
    j = 0

    while j < movies.length
      gross = movies[j][:worldwide_gross]
      total += gross
      result[name] = total

      j += 1
    end
   
    i += 1
  end
  
  return result
end