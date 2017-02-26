class DigitParser
  def initialize(strs)
    @strs = strs
  end
  
  def convert
    return 0 if @strs ==  [" _ ",
                           "| |",
                           "|_|"]
    return 1 if @strs == ["   ",
                          "  |",
                          "  |"]
    return 2 if @strs ==  [" _ ",    
                           " _|",
                           "|_ "]
    return 3 if @strs ==  [" _ ",
                           " _|",
                           " _|"]
    return 4 if @strs ==  ["   ",
                           "|_|",
                           "  |"]
    return 5 if @strs ==  [" _ ",
                           "|_ ",
                           " _|"]
    return 6 if @strs ==  [" _ ",
                           "|_ ",
                           "|_|"]
    return 7 if @strs ==  [" _ ",
                           "  |",
                           "  |"]
    return 8 if @strs ==  [" _ ",
                           "|_|",
                           "|_|"]      
    return 9 if @strs ==  [" _ ",
                           "|_|",
                           " _|"]      
  end
end
