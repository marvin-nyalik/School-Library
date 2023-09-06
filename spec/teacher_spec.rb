require_relative 'spec_helper'

describe Teacher do
  before(:each) do
    @teacher = Teacher.new(34, 'Money Market', 'Mackenzie')
  end

  it 'is initialized correctly' do
    expect(@teacher.name).to eq('Mackenzie')
  end

  it 'can always use services' do
    expect(@teacher.can_use_services?).not_to be_falsey
  end
end