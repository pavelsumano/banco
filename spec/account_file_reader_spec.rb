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

describe AccountFileReader do
  context "cuando el archivo tiene 4 líneas" do
    it "regresa un arreglo con digitos 123456789 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _     _  _  _  _  _ ",
                   "  | _| _||_||_ |_   ||_||_|",
                   "  ||_  _|  | _||_|  ||_| _|"]

      reader = AccountFileReader.new("spec/input")
      result = reader.read
      expect(result[0]).to eq expected
    end
    
    it "regresa un arreglo con digitos 183956729 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_||_ |_   | _||_|",
                   "  ||_| _| _| _||_|  ||_  _|"]

      reader = AccountFileReader.new("spec/input2")
      result = reader.read
      expect(result[0]).to eq expected
    end

    it "regresa un arreglo con digitos 183938728 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]

      reader = AccountFileReader.new("spec/files/input3")
      result = reader.read
      expect(result[0]).to eq expected
    end
    
    it "regresa un arreglo con digitos 183938728 y 123456789 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]

      expected1 = [ "    _  _     _  _  _  _  _ ",
                    "  | _| _||_||_ |_   ||_||_|",
                    "  ||_  _|  | _||_|  ||_| _|"]
      
      reader = AccountFileReader.new("files/input4")
      result = reader.read
      expect(result[0]).to eq expected
      expect(result[1]).to eq expected1
    end

    it "regresa un arreglo con digitos 183938728 y 183938728 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]

      expected1 = ["    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]

      reader = AccountFileReader.new("spec/input5")
      result = reader.read
      expect(result[0]).to eq expected
      expect(result[1]).to eq expected1
    end

    it "regresa un arreglo con digitos 183938728, 183938728, 123456789 para una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]

      expected1 = ["    _  _  _  _  _  _  _  _ ",
                   "  ||_| _||_| _||_|  | _||_|",
                   "  ||_| _| _| _||_|  ||_ |_|"]
      
      expected2 = [ "    _  _     _  _  _  _  _ ",
                    "  | _| _||_||_ |_   ||_||_|",
                    "  ||_  _|  | _||_|  ||_| _|"]
      
      reader = AccountFileReader.new("spec/input6")
      result = reader.read
      expect(result[0]).to eq expected
      expect(result[1]).to eq expected1
      expect(result[2]).to eq expected2
    end

  end
end
