require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'User', email: 'User@User.com')
  end
  before { subject.save }

  it 'name should not be nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the name' do
    subject.id = 1
    subject.name = 'User'
    subject.password = 'TestUser'
    expect(subject).to be_valid
  end

  it 'should valid the email' do
    subject.id = 1
    subject.email = 'User@User.com'
    subject.password = 'TestUser'
    expect(subject).to be_valid
  end

  it 'should be invalid email' do
    subject.email = ''
    expect(subject).to_not be_valid
  end
end
