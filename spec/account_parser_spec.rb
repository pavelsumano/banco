require "account_parser"
describe AccountParser do
  it "convierte una entrada de cuenta a digitos" do
    entrada = [ "    _  _     _  _  _  _  _ ",
                "  | _| _||_||_ |_   ||_||_|",
                "  ||_  _|  | _||_|  ||_| _|"] 
    resultado="123456789"
    parser = AccountParser.new(entrada)
    
    expect(parser.parse).to eq(resultado)
  end
  
  it "convierte una entrada de cuenta a digitos 123456709" do
    entrada = [ "    _  _     _  _  _  _  _ ",
                "  | _| _||_||_ |_   || ||_|",
                "  ||_  _|  | _||_|  ||_| _|"] 
    resultado="123456709"
    parser = AccountParser.new(entrada)
    
    expect(parser.parse).to eq(resultado)
  end
  
  
  xit "convierte una entrada de cuenta a digitos 123456708" do
    entrada = [ "    _  _     _  _  _  _  _ ",
                "  | _| _||_||_ |_   || ||_|",
                "  ||_  _|  | _||_|  ||_||_|"] 
    resultado="123456708"
    parser = AccountParser.new(entrada)
    
    expect(parser.parse).to eq(resultado)
  end
end
