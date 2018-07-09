RSpec.describe 'Generate Postcode data' do

  before(:all) do
    @postcode = SykGenData::postcode
  end

  it "should get a random UK postcode" do
    expect(@postcode.get_postcode).to be_a String
    expect(@postcode.get_postcode.scan(/\D/).count).to be > 0
    expect(@postcode.get_postcode.scan(/[a-zA-Z]/).count).to be > 0
  end

end
