RSpec.describe SykGenData do

  it "should have a version number" do
    expect(SykGenData::VERSION).not_to be nil
  end

  it "should give a class instance for form data" do
    expect(SykGenData::form.class).to eq GenFormData
  end

  it "should give a class instance for postcode data" do
    expect(SykGenData::postcode.class).to eq GenPostcodeData
  end

  it "should give a class instance of cc data" do
    expect(SykGenData::cc.class).to eq GenCCData
  end
end
