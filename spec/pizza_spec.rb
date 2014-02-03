require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
  describe '.initialize' do
    context 'When toppings are included for a new Pizza::Pie' do
      it 'records all of the toppings' do
        toppings = [
          Pizza::Topping.new('pepperoni'),
          Pizza::Topping.new('olives', true)
        ]
        pizza = Pizza::Pie.new(toppings)

        expect(pizza.toppings).to eq(toppings)
      end
    end

    context 'When no toppings are included for a new Pizza::Pie' do
      it 'defualts toppings to cheese only' do
        pizza = Pizza::Pie.new

        expect(pizza.toppings.first).to eq('cheese')
      end
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