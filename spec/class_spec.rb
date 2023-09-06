require_relative 'spec_helper'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Math')
    @student = Student.new(11, 'Marion')
  end

  it 'is initialized correctly' do
    expect(@classroom.label).to eq('Math')
  end

  it 'adds a student and sets the student classroom' do
    @classroom.add_student(@student)
    expect(@classroom.students).not_to be_falsey
    expect(@student.classroom).to be_an_instance_of(Classroom)
  end
end
