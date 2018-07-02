RSpec.describe 'Generate Postcode data' do

  it "should get a random UK postcode" do
    expect(SykGenDataClass.postcode.get_postcode).to be_a String
    expect(SykGenDataClass.postcode.get_postcode.scan(/\D/).count).to be > 0
    expect(SykGenDataClass.postcode.get_postcode.scan(/[a-zA-Z]/).count).to be > 0
  end

end
