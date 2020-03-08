require 'pp' 
require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database
def directors_totals(nds)
   
    result = {}  

    
  row_index = 0 
  while row_index < nds.length do
      name_index = 0 
      while name_index < nds[row_index][:name].length do 
        director = nds[row_index][:name]
        
        column_index = 0 
        gross_income = 0 
        while column_index < nds[row_index][:movies].length do
          gross_income += nds[row_index][:movies][column_index][:worldwide_gross]
          column_index += 1 
        end 
        
        result[director] = gross_income
        name_index += 1 
        
      end
      
  row_index +=1
  end


  return result
end
