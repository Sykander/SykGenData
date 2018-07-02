require 'json'

class GenCCData

  def initialize
    @cc_visa_hash = nil
    @cc_amex_hash = nil
    @cc_mastercard_hash = nil
  end

  def get_visa_cc_number
    if @cc_visa_hash.nil?
      cc_visa_numbers = File.read(Gem.loaded_specs["SykGenData"].gem_dir + '/lib/SykGenData/resources/cc_numbers/cc_visa_numbers.json')
      @cc_visa_hash = JSON.parse(cc_visa_numbers)
    end
    cc_number = @cc_visa_hash.sample['CreditCard']["CardNumber"].to_s
  end

  def get_visa_sec_code
    sec_code = ''
    while sec_code.length < 3
      sec_code += rand(0..9).to_s
    end
    sec_code
  end

  def get_amex_cc_number
    if @cc_amex_hash.nil?
      cc_amex_numbers = File.read(Gem.loaded_specs["SykGenData"].gem_dir + '/lib/SykGenData/resources/cc_numbers/cc_amex_numbers.json')
      @cc_amex_hash = JSON.parse(cc_amex_numbers)
    end
    cc_number = @cc_amex_hash.sample['CreditCard']['CardNumber'].to_s
  end

  def get_amex_sec_code
    sec_code = ''
    while sec_code.length < 4
      sec_code += rand(0..9).to_s
    end
    sec_code
  end

  def get_mastercard_cc_number
    if @cc_mastercard_hash.nil?
      cc_mastercard_numbers = File.read(Gem.loaded_specs["SykGenData"].gem_dir + '/lib/SykGenData/resources/cc_numbers/cc_mastercard_numbers.json')
      @cc_mastercard_hash = JSON.parse(cc_mastercard_numbers)
    end
    cc_number = @cc_mastercard_hash.sample['CreditCard']["CardNumber"].to_s
  end

  def get_mastercard_sec_code
    sec_code = ''
    while sec_code.length < 3
      sec_code += rand(0..9).to_s
    end
    sec_code
  end

end
