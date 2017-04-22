class AccountParser
  attr_reader :digit_splitter

  def initialize(cuenta)
    @cuenta=cuenta
    @digit_splitter = DigitSplitter.new(@cuenta)
  end

  def parse
    digit_splitter.split.map { | digit | DigitParser.new(digit).convert }.join
  end
end
