require 'pry-debugger'
require 'spec-helper'

describe Exercises do 

	it ':Triples a given string ' do
		str = Exercises.ex0("hello")

		expect(str).to eq("hellohellohello")
	end

	it 'Returns "nope" if str is wishes' do
		expect(Exercises.ex0("wishes")).to eq("nope")
	end
end


