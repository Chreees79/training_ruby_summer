
require_relative '../lib/jm_trader'

describe "The Jean_Michel Trader method" do
  it "should return the day of purchase and the day of sale with a big marge" do
    expect(day_trader([17, 3, 6, 9, 18, 8, 6, 1, 40])).to eq([1, 8])
    expect(day_trader([1, 12, 6, 5, 20, 12, 9, 8, 13])).to eq([0, 4])
  end
end

