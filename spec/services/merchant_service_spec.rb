require 'rails_helper'

RSpec.describe 'MerchantService', :vcr do
  it 'retrieves search data and parses response', :vcr do

    parsed_json = MerchantService.all_merchants
    
    expect(parsed_json).to be_a Array
    expect(parsed_json[0]).to be_a Hash
    expect(parsed_json[0][:type]).to eq('merchant')
  end
end