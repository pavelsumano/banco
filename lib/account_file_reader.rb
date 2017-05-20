class AccountFileReader
  
  def initialize(file)
      @file=file
  end
  
  def read
    File.open(@file) do |f|
      lines = f.readlines.map(&:chomp).reject(&:empty?)
      0.step(lines.size, 3).map {| i | lines[i,3] }
    end
    
  end
end
