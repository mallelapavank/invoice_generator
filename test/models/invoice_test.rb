# == Schema Information
#
# Table name: invoices
#
#  id             :bigint           not null, primary key
#  invoice_number :string
#  tnc            :text
#  notes          :text
#  due_date       :datetime
#  adjustments    :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :bigint
#
require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
