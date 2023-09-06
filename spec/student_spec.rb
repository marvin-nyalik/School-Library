require_relative 'spec_helper'

describe Student do
  before(:each) do
    @student = Student.new(12, 'Melvin')
    @classroom = Classroom.new('French')
  end

  it 'is initialized correctly' do
    expect(@student.name).to eq('Melvin')
    expect(@student.age).to eq(12)
  end

  it 'returns correct string version of student' do
    expect(@student.to_s).to eq("[Student] Name: Melvin, Age: 12, Parent Permission: true, ID:#{@student.id}")
  end

  it 'prints correct string from play_hooky' do
    expect(@student.play_hooky).to eq('¯(ツ)/¯')
  end

  it 'sets correct classroom for student' do
    @student.classroom = (@classroom)
    expect(@student.classroom).to be_an_instance_of(Classroom)
  end
end
