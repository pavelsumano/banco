require "digit_splitter"

describe DigitSplitter do
  it "convierte 012012012 a areglo bidimensional" do
    entrada = [" _     _  _     _  _     _ ", 
               "| |  | _|| |  | _|| |  | _|",
               "|_|  ||_ |_|  ||_ |_|  ||_ "]
    splitter = DigitSplitter.new(entrada)
    resultado =
            [
           [" _ ",
            "| |",
            "|_|"], 
           ["   ",
            "  |",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            "| |",
            "|_|"], 
           ["   ",
            "  |",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],            
           [" _ ",
            "| |",
            "|_|"], 
           ["   ",
            "  |",
            "  |"],
           [" _ ",
            " _|",
            "|_ "]
             ]

    expect(splitter.split).to eq(resultado)
  end
  
  it "convierte 123456789 a areglo bidimensional" do
    entrada = [ "    _  _     _  _  _  _  _ ",
                "  | _| _||_||_ |_   ||_||_|",
                "  ||_  _|  | _||_|  ||_| _|"] 
    splitter = DigitSplitter.new(entrada)
    resultado =
            [
           ["   ",
            "  |",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            "|_ ",
            " _|"],            
           [" _ ",
            "|_  ",
            "|_|"], 
           [" _ ",
            "  |",
            "  |"],
           [" _ ",
            "|_|",
            "|_|"],
           [" _ ",
            "|_|",
            " _|"]
             ]

    expect(splitter.split).to eq(resultado)
  end
  
  it "convierte 234234234 a areglo bidimensional" do
    entrada = [ " _  _     _  _     _  _    ",
                " _| _||_| _| _||_| _| _||_|",
                "|_  _|  ||_  _|  ||_  _|  |"] 
    splitter = DigitSplitter.new(entrada)
    resultado = [
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|", 
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"]
             ]

    expect(splitter.split).to eq(resultado)
  end
  
  it "convierte 214234234 a arreglo bidmensional" do
      entrada =  [ " _        _  _     _  _    ",
                   " _|  ||_| _| _||_| _| _||_|",
                   "|_   |  ||_  _|  ||_  _|  |"] 
      splitter = DigitSplitter.new(entrada)
      resultado = [
           [" _ ",
            " _|",
            "|_ "],
           ["   ",
            "  |",
            "  |"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|", 
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"]
             ]
    expect(splitter.split).to eq(resultado)
  end
  
  it "convierte 254234234 a arreglo bidmensional" do
      entrada =  [ " _  _     _  _     _  _    ",
                   " _||_ |_| _| _||_| _| _||_|",
                   "|_  _|  ||_  _|  ||_  _|  |"] 
      splitter = DigitSplitter.new(entrada)
      resultado = [
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            "|_ ",
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|", 
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"]
             ]
    expect(splitter.split).to eq(resultado)
  end
    xit "convierte 258234234 a arreglo bidmensional" do
      entrada =  [ " _  _  _  _  _     _  _    ",
                   " _||_ |_| _| _||_| _| _||_|",
                   "|_  _||_||_  _|  ||_  _|  |"] 
      splitter = DigitSplitter.new(entrada)
      resultado = [
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            "|_ ",
            " _|"], 
           [" _ ",
            "|_|",
            "|_|"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|", 
            " _|"], 
           ["   ",
            "|_|",
            "  |"],
           [" _ ",
            " _|",
            "|_ "],
           [" _ ",
            " _|",
            " _|"], 
           ["   ",
            "|_|",
            "  |"]
             ]
    expect(splitter.split).to eq(resultado)
  end
end
