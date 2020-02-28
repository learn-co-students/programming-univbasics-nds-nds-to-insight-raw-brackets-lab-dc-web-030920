$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}	 
  
 director_index = 0 

  while director_index < nds.count do
    movie_index = 0 
    gross_total = 0 
    while movie_index < nds[director_index][:movies].length do
      gross_total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
    result[nds[director_index][:name]] = gross_total
    director_index += 1 
  end
  result
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
 
