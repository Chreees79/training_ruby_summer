require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end
end

describe "the is_multiple_of_3_or_5? method" do
  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(1)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(8)).to eq(false)
    expect(is_multiple_of_3_or_5?(13)).to eq(false)
    expect(is_multiple_of_3_or_5?(46)).to eq(false)
  end
end

describe "sum_of_3_or_5_multiples method" do
  it"should return the sum of the 3 or 5 multiples" do
  expect(sum_of_3_or_5_multiples(0)).to eq(0)
  expect(sum_of_3_or_5_multiples(10)).to eq(23)
  expect(sum_of_3_or_5_multiples(11)).to eq(33)
  expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end
end

describe  "sum_of_3_or_5_multiples method" do
  it "should return a sentence when the number is a string, a float or negative" do
  expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  expect(sum_of_3_or_5_multiples(-7)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  expect(sum_of_3_or_5_multiples("hello")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  expect(sum_of_3_or_5_multiples("mfljsfsq")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  expect(sum_of_3_or_5_multiples(1.45)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  expect(sum_of_3_or_5_multiples(0.83)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
end