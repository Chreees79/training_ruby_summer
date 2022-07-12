require_relative '../lib/caesar'

describe "the cryptofoly method" do
  it "should return a word translate with tke encryption key" do
    expect(caesar_cipher("salut", 15)).to eq("hpaji")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Welcome In My World!", 12)).to eq("Iqxoayq Uz Yk Iadxp!")
    expect(caesar_cipher("the king of WORLD !!", 22)).to eq("pda gejc kb SKNHZ !!")
  end
end

describe "the cryptofoly method" do
  it "the encryption key is not a integer" do
    expect(caesar_cipher("salut", "hey")).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("Salut mon Ami", -6)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("Chacun fait ce qui LUI PLAIT !!", 0.8)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("Bienvenu vieille branche !!", 0.4)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
  end
end

describe "the cryptofoly method" do
  it "the encryption key is not a integer" do
    expect(caesar_cipher("salut", 27)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("Welcome In my WORLD", 34)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("Bonjour toi", 64)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
    expect(caesar_cipher("chaque JOUR suffit sa peine", 156)).to eq("tu n'as pas donné un nombre entier compris entre 0 et 26")
  end
end
