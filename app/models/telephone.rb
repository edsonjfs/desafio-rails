class Telephone < ApplicationRecord
  VALID_PHONE_TYPES = %w[Home Work Other home work other].freeze
  belongs_to :contact
  validates :phone_number, presence: true, uniqueness: { scope: :contact_id }, format:
    { with: /\A\d+\z/, message: 'Must have numbers olny' }

  validates :phone_type, presence: true
  validates_inclusion_of :phone_type, in: VALID_PHONE_TYPES

  validates :main_phone_number, inclusion: { in: [true, false] },
    uniqueness: { scope: :contact, conditions: -> { where.not(main_phone_number: false) } }
end
