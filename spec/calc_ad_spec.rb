# frozen_string_literal: true
require_relative '../../calc_ad/spec/spec_helper'

describe CalcAd do
  it 'has a version number' do
    expect(CalcAd::VERSION).not_to be nil
  end

  describe '#addition' do
    it 'two positive number' do
      expect(CalcAd.addition(1, 6)).to eq 7
    end

    it 'positive and negative number' do
      expect(CalcAd.addition(-5, 6)).to eq 1
    end

    it 'two negative number' do
      expect(CalcAd.addition(-3, -4).to_s).to eq '-7'
    end
  end

  describe '#substraction' do
    it 'two positive number' do
      expect(CalcAd.substraction(7, 6)).to eq 1
    end

    it 'positive and negative number' do
      expect(CalcAd.substraction(-5, 6).to_s).to eq '-11'
    end

    it 'two negative number' do
      expect(CalcAd.substraction(-3, -4)).to eq 1
    end
  end

  describe '#multipy' do
    it 'two positive number' do
      expect(CalcAd.multiply(7, 3)).to eq 21.0
    end

    it 'positive and negative number' do
      expect(CalcAd.multiply(-4, 9).to_s).to eq '-36.0'
    end

    it 'two negative number' do
      expect(CalcAd.multiply(-5, -3)).to eq 15.0
    end

    it 'on zero' do
      expect(CalcAd.multiply(6, 0)).to eq 0.0
    end
  end

  describe '#division' do
    it 'two positive number' do
      expect(CalcAd.division(9, 3)).to eq 3.0
    end

    it 'positive and negative number' do
      expect(CalcAd.division(-4, 9).to_s).to eq '-0.44'
    end

    it 'two negative number' do
      expect(CalcAd.division(-12, -4)).to eq 3.0
    end

    it 'on zero' do
      expect(CalcAd.division(6, 0)).to eq 'Dividing by zero is forbidden'
    end
  end
end
