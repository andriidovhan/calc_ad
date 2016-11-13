# frozen_string_literal: true
require 'calc_ad/version'

# comment for rubocop only
module CalcAd
  def self.addition(first_operand, second_operand)
    first_operand + second_operand
  end

  def self.substraction(first_operand, second_operand)
    first_operand - second_operand
  end

  def self.multiply(first_operand, second_operand)
    (first_operand * second_operand).round 2
  end

  def self.division(first_operand, second_operand)
    return 'Dividing by zero is forbidden' if second_operand.zero?
    (first_operand / second_operand.to_f).round 2
  end
end
