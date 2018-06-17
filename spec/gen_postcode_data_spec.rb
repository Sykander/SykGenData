describe 'Generate Postcode data' do

  before(:all) do
    class Dummy
      include GeneratorSuper
    end
    @gen = Dummy.new
  end

  it "should get a random UK postcode" do
    expect(@gen.postcode.get_postcode).to be_a String
    expect(@gen.postcode.get_postcode.scan(/\D/).count).to be > 0
    expect(@gen.postcode.get_postcode.scan(/[a-zA-Z]/).count).to be > 0
  end

end
