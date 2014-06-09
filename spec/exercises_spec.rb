require 'pry-debugger'
require 'spec-helper'

describe Exercises do 

	describe ".ex0" do
		it ':Triples a given string ' do
			str = Exercises.ex0("hello")

			expect(str).to eq("hellohellohello")
		end

		it 'Returns "nope" if str is wishes' do
			expect(Exercises.ex0("wishes")).to eq("nope")
		end
	end

	describe '.ex1' do
    it 'Returns the number of elements in the array' do
      
      arr = [0,1,2]

      expect(Exercises.ex1(arr)).to eq(3)
    end
  end

  describe '.ex2'do
    it 'returns the second element of an array' do

      arr = [0,1,2]

      expect(Exercises.ex2(arr)).to eq(1)
    end
  end

  describe '.ex3' do
    it ':Returns the sum of the given array of numbers' do

      expect(Exercises.ex3([1,2,3,4])).to eq(10)
    end
  end




end


