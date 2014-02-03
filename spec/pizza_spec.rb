require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Pizza::Topping.new('pepperoni'),
        Pizza::Topping.new('olives', true)
      ]
      pizza = Pizza::Pie.new(toppings)

      expect(pizza.toppings).to eq(toppings)
    end
  end
end 

describe Pizza::Topping	do
  describe '.initialize' do

    it 'set the name of the topping' do
      topping = Pizza::Topping.new('garlic')

      expect(topping.name).to eq('garlic')
  	end

    it 'set whether or not the topping is vegetarian' do
      topping = Pizza::Topping.new('bell peppers', true)

      expect(topping.vegetarian).to eq(true)      
    end

  end
end