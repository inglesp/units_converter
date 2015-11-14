require "spec_helper"

describe UnitsConverter do
  specify "converting metres to metres" do
    expect(["0.01", :metres]).to be_converted_to(["0.01", :metres])
    expect(["1", :metres]).to be_converted_to(["1", :metres])
    expect(["100", :metres]).to be_converted_to(["100", :metres])
  end

  specify "conveting metres to non-metres" do
    expect(["0.01", :metres]).to be_converted_to(["1", :centimetre])
    expect(["1", :metre]).to be_converted_to(["100", :centimetres])
    expect(["100", :metres]).to be_converted_to(["10000", :centimetres])
  end

  specify "converting non-metres to metres" do
    expect(["0.01", :centimetres]).to be_converted_to(["0.0001", :metres])
    expect(["1", :centimetre]).to be_converted_to(["0.01", :metres])
    expect(["100", :centimetres]).to be_converted_to(["1", :metres])
  end

  specify "converting non-metres to other non-metres" do
    expect(["1", :centimetre]).to be_converted_to(["0.00001", :kilometres])
    expect(["1", :kilometre]).to be_converted_to(["100000", :centimetres])
  end

  specify "converting to and from unit with irregular plural" do
    expect(["1", :foot]).to be_converted_to(["12", :inches])
    expect(["1", :yard]).to be_converted_to(["3", :feet])
  end
end
