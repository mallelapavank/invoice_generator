class Invoice < ApplicationRecord
  has_many :items
  belongs_to :user

  # accepts_nested_attributes_for :items
  
  validates :invoice_number, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
end
