require 'yaml'
require 'json'

class GenCityData

  def initialize
    @id_array = YAML.load_file('./resources/city_id.yml')
    @city_hash = JSON.parse(File.read('./resources/city.list.json'))
  end

  def get_random_city_id
    @id_array.sample.to_i
  end

  def get_city_name_by_id city_id
    @city_hash.detect {|city| city['id'] == city_id}['name']
  end

  def get_city_id_by_name city_name
    @city_hash.detect {|city| city['name'] == city_name}['id']
  end

  def get_city_names
    @city_hash.map {|city| city['name']}
  end

  def get_random_city_name
    get_city_names.sample
  end

  def get_city_coord_by_id city_id
    @city_hash.detect {|city| city['id'] == city_id}['coord'].map {|coordinate| coordinate[1]}
  end
end
