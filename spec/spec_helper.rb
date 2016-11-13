$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "calc_ad"
require_relative '../../calc_ad/lib/calc_ad'

describe Calc do
  describe '#addition' do
    it 'two positive number' do
      expect(Calc.new(1, 6).addition).to eq 7
    end

    it 'positive and negative number' do
      expect(Calc.new(-5, 6).addition).to eq 1
    end

    it 'two negative number' do
      expect(Calc.new(-3, -4).addition.to_s).to eq '-7.0'
    end
  end

  describe '#substraction' do
    it 'two positive number' do
      expect(Calc.new(7, 6).substraction).to eq 1
    end

    it 'positive and negative number' do
      expect(Calc.new(-5, 6).substraction.to_s).to eq '-11.0'
    end

    it 'two negative number' do
      expect(Calc.new(-3, -4).substraction).to eq 1
    end
  end

  describe '#multipy' do
    it 'two positive number' do
      expect(Calc.new(7, 3).multiply).to eq 21.0
    end

    it 'positive and negative number' do
      expect(Calc.new(-4, 9).multiply.to_s).to eq '-36.0'
    end

    it 'two negative number' do
      expect(Calc.new(-5, -3).multiply).to eq 15.0
    end

    it 'on zero' do
      expect(Calc.new(6, 0).multiply).to eq 0.0
    end
  end

  describe '#division' do
    it 'two positive number' do
      expect(Calc.new(9, 3).division).to eq 3.0
    end

    it 'positive and negative number' do
      expect(Calc.new(-4, 9).division.to_s).to eq '-0.44'
    end

    it 'two negative number' do
      expect(Calc.new(-12, -4).division).to eq 3.0
    end

    it 'on zero' do
      expect(Calc.new(6, 0).division).to eq 'Dividing by zero is forbidden'
    end
  end
end
