describe 'Generate City Data' do

  before(:all) do
    class Dummy
      include GeneratorSuper
    end
    @gen = Dummy.new
  end

  it "should give a random city id" do
    expect(@gen.city.get_random_city_id).to be_an Integer
  end

  it "should give a city name when given a city id" do
    id = @gen.city.get_random_city_id
    expect(@gen.city.get_city_name_by_id id).to be_a String
  end

  it "should give a city id when given a city name" do
    id = @gen.city.get_random_city_id
    name = @gen.city.get_city_name_by_id id
    expect(@gen.city.get_city_id_by_name name).to eq id
    expect(@gen.city.get_city_id_by_name name).to be_an Integer
  end

  it "should give an array of city name" do
    expect(@gen.city.get_city_names).to be_kind_of Array
    expect(@gen.city.get_city_names.sample).to be_a String
  end

  it "should get a random city name" do
    expect(@gen.city.get_random_city_name).to be_a String
  end

  it "should return a cities latitude and longitude in an array" do
    id = @gen.city.get_random_city_id
    expect(@gen.city.get_city_coord_by_id id).to be_kind_of Array
    expect(@gen.city.get_city_coord_by_id(id).sample).to be_an(Integer).or be_a(Float)
  end
end
