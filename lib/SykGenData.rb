require "SykGenData/version"
require 'SykGenData/generators/gen_form_data'
require 'SykGenData/generators/gen_postcode_data'
require 'SykGenData/generators/gen_cc_data'

class SykGenData
  def self.form
    GenFormData.new
  end

  def self.postcode
    GenPostcodeData.new
  end

  def self.cc
    GenCCData.new
  end
end
