require 'rails_helper'

RSpec.describe 'MerchantService', :vcr do
  it 'retrieves all merchant data and parses response', :vcr do

    parsed_json = MerchantService.all_merchants

    expect(parsed_json).to be_a Array
    expect(parsed_json[0]).to be_a Hash
    expect(parsed_json[0][:type]).to eq('merchant')
  end

  it 'retrieves one merchants details data and parses response', :vcr do

    parsed_json = MerchantService.merchant_details(1)
    
    expect(parsed_json).to be_a Hash
    expect(parsed_json[:type]).to eq('merchant')
  end
end