require "digit_parser"


describe DigitParser do
  it "parsea el digito 1" do
    strs = ["   ",
            "  |",
            "  |"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 1
  end
  
  it "parsea el digito 2" do
    strs = [" _ ",
            " _|",
            "|_ "]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 2
  end 
  
  it "parsea el digito 3" do
    strs = [" _ ",
            " _|",
            " _|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 3
  end
  
  it "parsea el digito 4" do
    strs = ["   ",
            "|_|",
            "  |"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 4
  end
  
  it "parsea el digito 5" do
    strs = [" _ ",
            "|_ ",
            " _|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 5
  end
  
  it "parsea el digito 6" do
    strs = [" _ ",
            "|_ ",
            "|_|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 6
  end
  
  it "parsea el digito 7" do
    strs = [" _ ",
            "  |",
            "  |"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 7
  end
  
  it "parsea el digito 8" do
    strs = [" _ ",
            "|_|",
            "|_|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 8
  end
  
  it "parsea el digito 9" do
    strs = [" _ ",
            "|_|",
            " _|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 9
  end
  
  it "parsea el digito 0" do
    strs = [" _ ",
            "| |",
            "|_|"]
    parser = DigitParser.new(strs)
    expect(parser.convert).to eq 0
  end
end

