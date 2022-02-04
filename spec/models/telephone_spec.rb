require 'rails_helper'

RSpec.describe Telephone, type: :model do
  let(:user) { User.create!(name: 'User Name', age: 20, biography: 'bio') }
  let(:contact) { Contact.create!(name: 'Contact Name', birthday: '01/01/2021', user_id: user.id) }
  let(:telephone) {
    Telephone.create!(
      phone_number: '999999999',
      phone_type: 'Home',
      main_phone_number: true,
      contact_id: 1
    )
  }

  it 'is valid with valid attributes' do
    user
    contact
    expect(telephone).to be_valid
  end

  it 'is valid changing main_phone_number to false' do
    user
    contact
    telephone.main_phone_number = false
    expect(telephone).to be_valid
  end

  it 'is not valid without phone_number attribute' do
    user
    contact
    telephone.phone_number = nil
    expect(telephone).to_not be_valid
  end

  it 'is not valid without phone_type attribute' do
    user
    contact
    telephone.phone_type = nil
    expect(telephone).to_not be_valid
  end

  it 'is not valid without contact_id attribute' do
    user
    contact
    telephone.contact_id = nil
    expect(telephone).to_not be_valid
  end

  it 'is not valid without main_phone_number attribute' do
    user
    contact
    telephone.main_phone_number = nil
    expect(telephone).to_not be_valid
  end
end
