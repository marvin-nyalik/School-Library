require_relative 'spec_helper'
​
describe TrimmerDecorator do
  it 'delegates the call to correct_name method of the wrapped Nameable object' do
    nameable = Nameable.new
    allow(nameable).to receive(:correct_name).and_return('Parthenogenesis')
​
    base_dec = BaseDecorator.new(nameable)
    trim_dec = TrimmerDecorator.new(base_dec)
​
    result = trim_dec.correct_name
​
    expect(result).to eq('Parthenoge')
  end
end