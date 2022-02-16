class User < ApplicationRecord
  has_many :contacts
  validates :name, presence: true, uniqueness: true
  has_many :telephones, through: :contacts
end
