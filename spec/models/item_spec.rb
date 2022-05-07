require 'rails_helper'

RSpec.describe Item, type: :model do
  subject do
    Item.create(name: 'Gints', title: 'Speciality', description: 'Really a good dr.',
                image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 100, location: 'LA')
  end
  before { subject.save }

  it 'name should not be nil' do
    subject.name = ''
    expect(subject).to be_valid
  end

  it 'should valid the name' do
    subject.name = 'test house'
    expect(subject).to be_valid
  end

  it 'price should be a number' do
    expect(subject).to be_valid
  end

  it 'image_url should be a link' do
    expect(subject.image).to match('https')
  end
end
