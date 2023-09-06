require_relative 'spec_helper'
​
describe UpcaseDecorator do
  it 'delegates the call to correct_name method of the wrapped Nameable object' do
    nameable = Nameable.new
    allow(nameable).to receive(:correct_name).and_return('Parthenogenesis')
​
    base_dec = BaseDecorator.new(nameable)
    upcase_dec = UpcaseDecorator.new(base_dec)
​
    result = upcase_dec.correct_name
​
    expect(result).to eq('PARTHENOGENESIS')
  end
end