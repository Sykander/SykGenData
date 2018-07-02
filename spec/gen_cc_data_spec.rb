RSpec.describe "Generate CC data for testing online payment forms" do

  before(:all) do
    class Dummy
      include SykGenData
    end
    @gen = Dummy.new
  end

  it "should return a visa cc number" do
    expect(@gen.cc.get_visa_cc_number).to be_a String
    expect(@gen.cc.get_visa_cc_number.length).to eq 16
  end

  it "should return a visa cc security code" do
    expect(@gen.cc.get_visa_sec_code).to be_a String
    expect(@gen.cc.get_visa_sec_code.length).to eq 3
  end

  it "should return an amex cc number" do
    expect(@gen.cc.get_amex_cc_number).to be_a String
    expect(@gen.cc.get_amex_cc_number.length).to eq 15
  end

  it "should return an amex security code" do
    expect(@gen.cc.get_amex_sec_code).to be_a String
    expect(@gen.cc.get_amex_sec_code.length).to eq 4
  end

  it "should return a mastercard cc number" do
    expect(@gen.cc.get_amex_cc_number).to be_a String
    expect(@gen.cc.get_amex_cc_number.length).to eq 16
  end

  it "should return a mastercard security code" do
    expect(@gen.cc.get_amex_sec_code).to be_a String
    expect(@gen.cc.get_amex_sec_code.length).to eq 3
  end

end
