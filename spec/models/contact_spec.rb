require 'rails_helper'

RSpec.describe Contact, type: :model do
  let(:user) { User.create(name: 'User Name', age: 20, biography: 'bio') }
  let(:user_02) { User.create(name: 'User_02 Name', age: 30, biography: 'bio') }
  let(:contact) { Contact.create(name: 'Contact Name', user_id: user.id) }

  it 'is valid with valid name attribute' do
    expect(contact).to be_valid
  end

  it 'is not valid when two contacts with same name in same user' do
    contact
    expect(Contact.create(name: 'Contact Name', user_id: user.id)).to_not be_valid
  end

  it 'is valid when adding contacts with same name in diferent users' do
    contact
    expect(Contact.create(name: 'Contact Name', user_id: user_02.id)).to be_valid
  end
end
