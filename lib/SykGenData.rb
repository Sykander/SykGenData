require "SykGenData/version"
require 'SykGenData/generators/gen_form_data'
require 'SykGenData/generators/gen_postcode_data'
require 'SykGenData/generators/gen_city_data'

module SykGenData
  def form
    GenFormData.new
  end

  def postcode
    GenPostcodeData.new
  end

  def city
    GenCityData.new
  end
end
