require 'rails_helper'
RSpec.describe Evaluated, type: :model do
  subject do
    Evaluated.new(name: 'Dr Manish', cpf: 'manish1010', email: 'francksefu1998@gmail.com',
                  date_of_birth: '1998-01-12')
  end
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'cpf should be present' do
    subject.cpf = nil
    expect(subject).to_not be_valid
  end

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'date of birth should be present' do
    subject.date_of_birth = nil
    expect(subject).to_not be_valid
  end
end
