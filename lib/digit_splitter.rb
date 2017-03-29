class DigitSplitter
  def initialize(account)
    @account = account
  end
  
  def split
    (0..24).step(3).map do |aux|
      [@account[0][aux,3], @account[1][aux,3], @account[2][aux,3]]
    end
    
  end
end
