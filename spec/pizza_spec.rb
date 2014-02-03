require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do

end 

describe Pizza::Topping do
	
  describe '.initialize' do
    it 'set the name of the topping' do
      topping = Pizza::Topping.new('garlic')

      expect(topping.name).to eq('garlic')
  	end
  end

end