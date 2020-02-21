$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  nil

  director_index = 0
  while director_index < nds.length do
    current_director = nds[director_index][:name]
    result[current_director] = gross_for_director( nds[director_index] )
    director_index += 1
  end
  result
end

def gross_for_director(director_data)
  movie_index = 0
  movies = director_data[:movies]
  total_gross_for_director = 0

  while movie_index < movies.length do
    total_gross_for_director += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  total_gross_for_director
end

#   # Remember, it's always OK to pretty print what you get *in* to make sure
#   # that you know what you're starting with!
#   #
#   #
#   # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
#   result = {
#   }
#   grand_total = 0
  
#   #
#   # Use loops, variables and the accessing method, [], to loop through the NDS
#   # and total up all the
#   # ...
#   # ...
#   # ...
#   #
#   #
#   # Be sure to return the result at the end!
#   nil
# end
# def directors_totals(nds)
#   result = {}
#   director_index = 0
#   while director_index < nds.length do
#     name = nds[director_index][:name]
#     grand_total = 0
#     movie_index = 0
#     movies = nds[director_index][:movies]
#     while movie_index < movies.length do
#       grand_total += movies[movie_index][:worldwide_gross]
#       movie_index += 1
#       end
#     result[name] = grand_total
#   director_index += 1
#     end
# result
# end
# directors_totals($directors_database)
