require 'rails_helper'

RSpec.describe 'ItemService', :vcr do
  it 'retrieves a merchants items data and parses response', :vcr do

    parsed_json = ItemService.merchant_items(1)
    expect(parsed_json).to be_a Array
    expect(parsed_json[0]).to be_a Hash
    expect(parsed_json[0][:type]).to eq('item')
  end
end