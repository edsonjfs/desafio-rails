class Contact < ApplicationRecord
  belongs_to :user
  has_many :telephones
  validates :name, presence: true, uniqueness: { scope: :user_id }
end
