describe AccountFileReader do
  let(:file) { "input" }

  context "cuando el archivo tiene 4 líneas" do
    xit "regresa un arreglo conteniendo una cuenta (en un arreglo de tres elementos)" do
      expected = [ "    _  _     _  _  _  _  _ ",
                   "  | _| _||_||_ |_   ||_||_|",
                   "  ||_  _|  | _||_|  ||_| _|"]

      reader = AccountFileReader.new(file)
      result = reader.read
      expect(result[0]).to eq expected
    end
  end
end
