require_relative 'spec_helper'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  it 'its reverse method reverses a string' do
    expect(@solver.reverse('hello')).to eq('olleh')
    expect(@solver.reverse('hi')).to eq('ih')
  end

  it 'returns the correct factorial of a number' do
    expect(@solver.factorial(4)).to eq(24)
    expect(@solver.factorial(0)).to eq(1)
    expect { @solver.factorial(-1) }.to raise_error(RangeError, 'Only positive values allowed')
    expect { @solver.factorial(-14) }.to raise_error(RangeError, 'Only positive values allowed')
  end

end
