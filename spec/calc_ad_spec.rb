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

  describe '#multiply' do
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

  describe 'negative tests' do
    context 'raise ArgumentError' do
      context '#addition' do
        it 'should raise an ArgumentError error if no parameters passed' do
          expect { CalcAd.addition }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if 1 parameter passed' do
          expect { CalcAd.addition(6) }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if more than 2 parameters passed' do
          expect { CalcAd.addition(6, 6, 7) }.to raise_error(ArgumentError)
        end

        it 'should raise an TypeError if wrong parameter type passed' do
          expect { CalcAd.addition('str1') }.to raise_error(ArgumentError)
        end
      end

      context '#subsctrction' do
        it 'should raise an ArgumentError error if no parameters passed' do
          expect { CalcAd.substraction }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if 1 parameter passed' do
          expect { CalcAd.substraction(6) }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if more than 2 parameters passed' do
          expect { CalcAd.substraction(6, 5, 2) }.to raise_error(ArgumentError)
        end

        it 'should raise an TypeError if wrong parameter type passed' do
          expect { CalcAd.substraction('str1') }.to raise_error(ArgumentError)
        end
      end

      context '#mulptiply' do
        it 'should raise an ArgumentError error if no parameters passed' do
          expect { CalcAd.multiply }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if 1 parameter passed' do
          expect { CalcAd.multiply(6) }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if more than 2 parameters passed' do
          expect { CalcAd.multiply(6, 5, 2) }.to raise_error(ArgumentError)
        end

        it 'should raise an TypeError if wrong parameter type passed' do
          expect { CalcAd.multiply('str1') }.to raise_error(ArgumentError)
        end
      end

      context '#division' do
        it 'should raise an ArgumentError error if no parameters passed' do
          expect { CalcAd.division }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if 1 parameter passed' do
          expect { CalcAd.division(6) }.to raise_error(ArgumentError)
        end

        it 'should raise an ArgumentError error if more than 2 parameters passed' do
          expect { CalcAd.division(6, 5, 2) }.to raise_error(ArgumentError)
        end

        it 'should raise an TypeError if wrong parameter type passed' do
          expect { CalcAd.division('str1') }.to raise_error(ArgumentError)
        end
      end
    end

    context 'raise TypeError and NoMethodError' do
      it 'should raise an TypeError if 1 wrong parameter type passed' do
        expect { CalcAd.addition(6, 'str') }.to raise_error(TypeError)
      end

      it 'should raise an TypeError if 1 wrong parameter type passed' do
        expect { CalcAd.substraction(6, 'str') }.to raise_error(TypeError)
      end

      it 'should raise an TypeError if 1 wrong parameter type passed' do
        expect { CalcAd.multiply(6, 'str') }.to raise_error(TypeError)
      end

      it 'should raise an NoMethodError if 1nd operand wrong parameter type passed' do
        expect { CalcAd.multiply('str', 6) }.to raise_error(NoMethodError)
      end

      it 'should raise an NoMethodError if 2nd operand wrong parameter type passed' do
        expect { CalcAd.division(6, 'str') }.to raise_error(NoMethodError)
      end
    end
  end
end
