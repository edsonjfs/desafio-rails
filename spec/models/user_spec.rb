require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid name attribute' do
    expect(User.new(name: 'Name')).to be_valid
  end

  it 'is not valid without name attribute' do
    expect(User.new(name: nil)).to_not be_valid
  end
end
