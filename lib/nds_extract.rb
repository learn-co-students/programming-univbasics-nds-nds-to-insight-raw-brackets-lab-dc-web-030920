$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
 new_hash = {}
  row_index = 0 
  
  #  binding.pry 

  while row_index < nds.length do 
  
    temp_movies = nds[row_index][:movies].length 
    
    #binding.pry 
   directors_name = nds[row_index][:name]
   sub_total = 0 
   column_index = 0 
     while column_index < temp_movies do 
      
      sub_total += nds[row_index][:movies][column_index][:worldwide_gross]
     
      column_index += 1 
    end
    new_hash[directors_name] = sub_total


   row_index += 1 
  end 
 

 
 new_hash
 
  
  
  #pp nds[0][:movies][0][:worldwide_gross]
 # pp (nds )
  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => #"222312123123"
  #result = {
  
  #
  # Use loops, variables and the accessing method, [], to loop through the #NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
  end 
