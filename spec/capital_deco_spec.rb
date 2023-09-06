require_relative 'spec_helper'

describe CapitalizeDecorator do
  it 'delegates the call to correct_name method of the wrapped Nameable object' do
    nameable = Nameable.new
    allow(nameable).to receive(:correct_name).and_return('parthenogenesis')

    base_dec = BaseDecorator.new(nameable)
    cap_dec = CapitalizeDecorator.new(base_dec)

    result = cap_dec.correct_name

    expect(result).to eq('Parthenogenesis')
  end
end
