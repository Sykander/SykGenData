describe 'Generator Super class' do

  before(:all) do
    class Dummy
      include GeneratorSuper
    end
    @gen = Dummy.new
  end

  it "should give a class instance for city data" do
    expect(@gen.city.class).to eq GenCityData
  end

  it "should give a class instance for form data" do
    expect(@gen.form.class).to eq GenFormData
  end

  it "should give a class instance for postcode data" do
    expect(@gen.postcode.class).to eq GenPostcodeData
  end
end
