RSpec.describe 'Generate Form data for online registration forms' do

  before(:all) do
    @form = SykGenData::form
  end

  it "should get a random country name" do
    expect(@form.get_country).to be_a String
  end

  it "should get a random fake location" do
    expect(@form.get_fake_location).to be_a String
  end

  it "should get a random first name" do
    expect(@form.get_first_name).to be_a String
  end

  it "should get a random last name" do
    expect(@form.get_last_name).to be_a String
  end

  it "should get a random Date of Birth as an array of three integers" do
    expect(@form.get_dob 0, 64).to be_kind_of Array
    expect(@form.get_dob(0, 64).sample).to be_an Integer
  end

  it "should get a random marital status" do
    expect(@form.get_marital_status).to be_a String
  end

  it "should get a random hobby " do
    expect(@form.get_hobby).to be_a String
  end

  it "should get a random phone number starting 07" do
    expect(@form.get_phone_number).to be_a String
    expect(@form.get_phone_number.slice 0..1).to eq '07'
  end

  it "should get a username" do
    expect(@form.get_username).to be_a String
  end

  it "should get a long username with 64 characters" do
    expect(@form.get_long_username).to be_a String
    expect(@form.get_long_username.length).to eq 64
  end

  it "should get a quote for an about me section" do
    expect(@form.get_about_me).to be_a String
  end

  it "should get a password between 8 and 16 characters long" do
    expect(@form.get_password).to be_a String
    expect(@form.get_password.length).to be_between(8, 16).inclusive
  end

  it "should get a string of just numeric values between 8 and 16 characters" do
    expect(@form.get_numeric_string).to be_a String
    expect(@form.get_numeric_string.length).to be_between(8, 16).inclusive
    expect(@form.get_numeric_string.scan(/\D/).empty?).to be true
  end

  it "should get a random fake email" do
    expect(@form.get_email).to be_a String
    expect(@form.get_email.include? '@').to be true
  end

end
