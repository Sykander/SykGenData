RSpec.describe SykGenData do

  before(:all) do
    class Dummy
      include SykGenData
    end
    @gen = Dummy.new
  end

  it "should have a version number" do
    expect(SykGenData::VERSION).not_to be nil
  end

  it "should give a class instance for form data" do
    expect(@gen.form.class).to eq GenFormData
  end

  it "should give a class instance for postcode data" do
    expect(@gen.postcode.class).to eq GenPostcodeData
  end
end
