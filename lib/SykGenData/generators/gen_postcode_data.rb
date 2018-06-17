require 'json'
require 'httparty'
class GenPostcodeData
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_postcode
    JSON.parse(self.class.get('/random/postcodes').body)['result']['postcode'].gsub(' ', '')
  end
end
