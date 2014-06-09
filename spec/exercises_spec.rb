require 'pry-debugger'
require 'spec-helper'
require 'active_support/core_ext/kernel/reporting'
require 'time'

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
    it 'Returns the sum of the given array of numbers' do

      expect(Exercises.ex3([1,2,3,4])).to eq(10)
    end
  end

  describe '.ex4' do
    it 'Returns the max number of the given array' do
      expect(Exercises.ex4([1,4,3,0])).to eq(4)
    end
  end

  describe '.ex5' do
    it 'Iterates through an array and `puts` each element' do
      
      output = capture :stdout do
        Exercises.ex5([1,4,3,0])
      end

      
      expect(output).to include "1\n4\n3\n0\n"
    end
  end

  describe '.ex6' do
    it 'updates last element to panda' do
      arr = [1,2,4]

      expect(Exercises.ex6(arr)).to eq([1,2,'panda'])

    end

    it 'changes last item to GODZILLA if last item is "panda"' do
      arr = [1,2,'panda']

      expect(Exercises.ex6(arr)).to eq([1,2,'GODZILLA'])
    end
  end

  describe '.ex7' do
    it 'adds "str" to array if already present' do

    expect(Exercises.ex7(['a','b',4,"nando","paul"],"nando")).to eq(['a','b',4,"nando","paul","nando"])
    end

  it 'does nothing if "str" not in array'do

    expect(Exercises.ex7(['a','b',4,"nando","paul"],"Fernando")).to eq(['a','b',4,"nando","paul"])
    end
  end

  describe '.ex8' do

    it 'Iterate through `people` and print out their name and occupation' do
      # output = capture :stdout do
      arr = Array.new
      h1 = {:name=>"Bob", :occupation=>"builder"}
      h2 = {:name=>"Thomas", :occupation=>"train engine"}
      arr << h1
      arr << h2

      STDOUT.should_receive(:puts).with("name: Bob, occupation: builder")
      STDOUT.should_receive(:puts).with("name: Thomas, occupation: train engine")

      Exercises.ex8(arr)
    end
  end

  describe '.ex9' do
    it 'Returns `true` if the given time is in a leap year' do
      t1 = Time.parse("01-01-1996")
      t2 = Time.parse("01-01-2000")
      t3 = Time.parse("01-01-2100")
      t4 = Time.parse("01-01-1777")
      expect(Exercises.ex9(t1)).to eq(true)
      expect(Exercises.ex9(t2)).to eq(true)
      expect(Exercises.ex9(t3)).to eq(false)
      expect(Exercises.ex9(t4)).to eq(false)

    end


  end 
end




