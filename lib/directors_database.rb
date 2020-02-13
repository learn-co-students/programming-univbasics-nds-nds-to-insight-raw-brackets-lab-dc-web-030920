require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

def directors_totals(directors_database)
  my_hash = {

  }
  directors_index = 0
  total_gross = 0
  while directors_index < directors_database.length do
    movie_index = 0
    while column_index < directors_database[directors_index].length do
      total_gross += directors_database[directors_index][:movies][:worldwide_gross]
      movies_index += 1
    end
    directors_index += 1
  end
  puts total_gross
end
