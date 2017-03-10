RSpec::Matchers.define :represent do |expect|
  match do |actual|
    expect == actual
  end

  failure_message_for_should do |actual|
    formated_actual = extract_(actual)
    formated_expected = extract_(expected)
    "expected\n#{formated_actual}\nto represent\n#{formated_expected}"
  end

  def extract_(v)
    [
      v.map { |x| x[0] }.join,
      v.map { |x| x[1] }.join,
      v.map { |x| x[2] }.join
    ].join("\n")
  end
end
