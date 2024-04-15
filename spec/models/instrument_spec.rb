require 'rails_helper'
RSpec.describe Instrument, type: :model do
  subject do
    Instrument.new(question_one: 'How do you feel?', question_two: 'How do you feel today?', question_tree: 'Why?', question_four: 'How do you feel?',
                   question_five: 'really?')
  end
  before { subject.save }

  it 'question one should be present' do
    subject.question_one = nil
    expect(subject).to_not be_valid
  end

  it 'question two should be present' do
    subject.question_two = nil
    expect(subject).to_not be_valid
  end

  it 'question three should be present' do
    subject.question_tree = nil
    expect(subject).to_not be_valid
  end

  it 'question four should be present' do
    subject.question_four = nil
    expect(subject).to_not be_valid
  end

  it 'question five should be present' do
    subject.question_five = nil
    expect(subject).to_not be_valid
  end
end
