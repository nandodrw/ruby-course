require 'pry-debugger'
require 'spec-helper'

describe Exercises do 

	it ':Triples a given string ' do
		str = Exercises.ex0("hello")

		expect(str).to eq("hellohellohello")
	end
end


