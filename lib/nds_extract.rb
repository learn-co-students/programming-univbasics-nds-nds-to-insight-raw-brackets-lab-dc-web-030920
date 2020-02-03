$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # Be sure to return the result at the end!
  
  

def directors_totals(nds)
  director_index = 0
  result = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      result[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

  result
end
      
 

#grand_total = 0
#row_index = 0
#while row_index < vm.length do
  #column_index = 0
  #while column_index < vm[row_index].length do
   # inner_len = vm[row_index][column_index].length
   # inner_index = 0
  #  while inner_index < inner_len do
      # Explanation!
      # vm[row][column][spinner]
      # spinner is full of Hashes with keys :price and :name
   #   grand_total += vm[row_index][column_index][inner_index][:price]
    #  inner_index += 1
    #end
  #  column_index += 1
  #end
  #row_index += 1
#end
 
#p grand_total #=> 1192




