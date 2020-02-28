$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  pp directors_database
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  total_gross = 0
  outer_index = 0
  while outer_index < nds.length do
    inner_index = 0
    while inner_index < nds[outer_index][:movies].length do
      total_gross += nds[outer_index][:movies][inner_index][:worldwide_gross]
    end
    result[nds[outer_index][:name]] = total_gross
  end
  # Be sure to return the result at the end!
  nil
end
