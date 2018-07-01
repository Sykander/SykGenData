require "SykGenData/version"
require 'SykGenData/generators/gen_form_data'
require 'SykGenData/generators/gen_postcode_data'
require 'SykGenData/generators/gen_cc_data'

module SykGenData
  def form
    GenFormData.new
  end

  def postcode
    GenPostcodeData.new
  end

  def cc
    GenCCData.new
  end
end
