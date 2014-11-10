require 'spec_helper'
require_relative "../fizzbuzz.rb"

describe FizzBuzz do

  describe "FizzBuzz" do
    context "if it's a multiple of 3" do
      let(:number) do
        3
      end

      it "returns fizz" do
        expect(FizzBuzz.new(5, 10).translate(number)).to eq('fizz')
      end
    end

    context "if it's a multiple of 5" do
      let(:number) do
        5
      end
      it "returns buzz" do
        expect(FizzBuzz.new(5, 10).translate(number)).to eq('buzz')
      end
    end

    context "if number is a multiple of 3 and 5" do
      let(:number) do
        30
      end
      it "returns fizzbuzz" do
        expect(FizzBuzz.new(5, 10).translate(number)).to eq('fizzbuzz')
      end
    end

    context "if it's not a multiple " do
      let(:number) do
        11
      end
      it "returns the number" do
        expect(FizzBuzz.new(5, 10).translate(number)).to eq(number)
      end
    end
  end
end