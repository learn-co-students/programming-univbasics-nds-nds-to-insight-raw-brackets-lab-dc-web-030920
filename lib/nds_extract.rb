$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  total_gross_from_movies = 0
  directors_counter = 0
  my_hash = {} # we create an empty hash where we will be putting new keys and values
  while directors_counter < directors_database.length do
    movie_counter = 0
    director_name = directors_database[directors_counter][:name]
    while movie_counter < directors_database[directors_counter][:movies].length do
      total_gross_from_movies += directors_database[directors_counter][:movies][movie_counter][:worldwide_gross]
      movie_counter += 1
    end
    my_hash[director_name] = total_gross_from_movies # This adds the new key and new value to the hash.
    total_gross_from_movies = 0 # Don't forget to initialize the variable back to 0 cause it will add up all gross from each director
    directors_counter += 1
  end
    p my_hash
end
