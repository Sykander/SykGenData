require "bundler/setup"
require "SykGenData"

# Adds in some functions for testing
# Adds in SykGenData in an extended class SykGenDataClass
require_relative './test_functions'

RSpec.configure do |config|

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

RSpec.describe "Assets used for testing" do

  context "Using the Gem" do

    it "should have a module caled SykGenData" do
      expect(SykGenData).not_to be nil
    end

  end

  context "Testing" do

    it "should have a class called Testing" do
      expect(Testing).not_to be nil
    end

    it "should have a method called cc_checksum_mod10 which performs a credit card mod 10 calculation check" do
      expect( Testing.cc_checksum_mod10 372535873749620 ).to be false
      expect( Testing.cc_checksum_mod10 372535873749621 ).to be true
      expect( Testing.cc_checksum_mod10 372535873749622 ).to be false

      expect( Testing.cc_checksum_mod10 5586267470722047 ).to be false
      expect( Testing.cc_checksum_mod10 5586267470722048 ).to be true
      expect( Testing.cc_checksum_mod10 5586267470722049 ).to be false

      expect( Testing.cc_checksum_mod10 4539062140713109 ).to be false
      expect( Testing.cc_checksum_mod10 4539062140713100 ).to be true
      expect( Testing.cc_checksum_mod10 4539062140713101 ).to be false
    end

  end


end
