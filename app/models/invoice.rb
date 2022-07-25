# == Schema Information
#
# Table name: invoices
#
#  id              :bigint           not null, primary key
#  invoice_number  :string
#  tnc             :text
#  notes           :text
#  due_date        :datetime
#  adjustments     :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint
#  generation_date :datetime
#
class Invoice < ApplicationRecord
  has_many :items
  belongs_to :user

  accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true

  validates :invoice_number, presence: true, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
end
