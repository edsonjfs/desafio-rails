require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User Validations' do
    let(:user) { User.create!(name: 'User Name', age: 20, biography: 'bio') }

    it 'is valid with valid name attribute' do
      expect(user).to be_valid
    end

    it 'is not valid without name attribute' do
      expect { User.create!(name: '') }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is not valid with the same name' do
      user
      expect { User.create!(name: 'User Name') }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  it 'is valid just with name attribute' do
    expect(User.create!(name: 'Name')).to be_valid
  end
end
