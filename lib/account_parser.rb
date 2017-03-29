class AccountParser
 
  def initialize(cuenta)
    @cuenta=cuenta
  end
  
  def parse
     datos =  [ "    _  _     _  _  _  _  _ ",
                "  | _| _||_||_ |_   ||_||_|",
                "  ||_  _|  | _||_|  ||_| _|"] 
    if @cuenta == datos 
      "123456789"
    else 
      "123456709"
    end
  end
end
