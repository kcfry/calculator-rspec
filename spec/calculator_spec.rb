require 'rspec'
require 'calculator'

describe Calculator do

	describe 'addition' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.add(2,3)
			expect(actual).to be_a Integer
			
		end
	
		it 'can add many numbers' do
			calc = Calculator.new
			actual = calc.add(1,2,3,4)
			expect(actual).to eq 10
		end
	
	
	end

	describe 'subtraction' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.sub(2,3) 
			expect(actual).to be_a Integer
		end
	
		it 'can subtract many numbers' do
			calc = Calculator.new
			actual = calc.sub(3,2,1)
			expect(actual). to eq 0
		end	
	end		
	
	describe 'multiplication' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.mult(2,3)
			expect(actual).to be_a Integer
		end
		
		it 'can multiply many numbers' do
			calc = Calculator.new
			actual = calc.mult(3,2)
			expect(actual). to eq 6
		end	
	end		
	
	describe 'division' do
		it 'returns an integer' do
			calc = Calculator.new
			actual = calc.div(2,3)
			expect(actual).to be_a Integer
		end
		
		it 'can divide many numbers' do
			calc = Calculator.new
			actual = calc.div(10,2)
			expect(actual).to eq 5
		end	
	end	
end	
