RSpec.describe "Generate CC data for testing online payment forms" do

  before(:all) do
    @cc = SykGenData::cc
  end

  it "should return a visa cc number" do
    expect(@cc.get_visa_cc_number).to be_a String
    expect(@cc.get_visa_cc_number.length).to eq 16
    expect(
      Testing.cc_checksum_mod10 @cc.get_visa_cc_number
    ).to be true
  end

  it "should return a visa cc security code" do
    expect(@cc.get_visa_sec_code).to be_a String
    expect(@cc.get_visa_sec_code.length).to eq 3
  end

  it "should return an amex cc number" do
    expect(@cc.get_amex_cc_number).to be_a String
    expect(@cc.get_amex_cc_number.length).to eq 15

    # Running a testing function
    test = Testing.cc_checksum_mod10(@cc.get_amex_cc_number)
    expect(test).to be true
  end

  it "should return an amex security code" do
    expect(@cc.get_amex_sec_code).to be_a String
    expect(@cc.get_amex_sec_code.length).to eq 4
  end

  it "should return a mastercard cc number" do
    expect(@cc.get_mastercard_cc_number).to be_a String
    expect(@cc.get_mastercard_cc_number.length).to eq 16
    expect(
      Testing.cc_checksum_mod10 @cc.get_mastercard_cc_number
    ).to be true
  end

  it "should return a mastercard security code" do
    expect(@cc.get_mastercard_sec_code).to be_a String
    expect(@cc.get_mastercard_sec_code.length).to eq 3
  end

end
