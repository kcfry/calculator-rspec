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
		
		it 'can add by 0' do
			calc = Calculator.new
			actual = calc.add(2,0)
			expect(actual).to eq 2
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
	
		it 'can subtract zero' do
			calc = Calculator.new
			actual = calc.sub(4,0)
			expect(actual). to eq 4
		end
		
		it 'can subtract in different order' do
			calc = Calculator.new
			actual = calc.sub(3,5)
			expect(actual).to eq -2
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
			actual = calc.mult(3,2,1)
			expect(actual). to eq 6
		end	
		
		it 'can multiply by zero' do
			calc = Calculator.new
			actual = calc.mult(4,0)
			expect(actual).to eq 0
		end
		
		it 'can multiply by one' do 
			calc = Calculator.new
			actual = calc.mult(4,1)
			expect(actual).to eq 4
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
			actual = calc.div(12,3,2)
			expect(actual).to eq 2
		end
			
		it 'can divide by one' do
			calc = Calculator.new
			actual = calc.div(10,1)
			expect(actual).to eq 10
		end
		
		it 'can not divide by zero' do
			calc = Calculator.new
			expect{calc.div(4,0)}.to raise_error ZeroDivisionError
		end	
	end	
end	
