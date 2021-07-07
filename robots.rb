# A Method that takes in a string of Capital Letters(ex. "LLLLRRRRRUUDDUUDDDDD")
# Return true or false if the robot is back where he started
class Movements
  def path_finder(str)
    # Break into array to filter each move
    path = str.split('')
  
    # Store move counts in separate variables for each direction
    left_count = 0
    right_count = 0
    up_count = 0
    down_count = 0
  
    # Loop over moves and increment count of specific moves
    path.each { |move| 
      if move == "L"
        left_count += 1
      elsif move == "R"
        right_count += 1
      elsif move == "U"
        up_count += 1
      elsif move == "D"
        down_count += 1
      end
    }
    
    # Check to see if directions are equal thus determining original position is true or false
    if left_count != right_count && up_count != down_count
     return false
    else
     return true
    end
  end
end