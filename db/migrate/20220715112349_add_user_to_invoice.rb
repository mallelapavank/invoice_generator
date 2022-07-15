class AddUserToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_reference :invoices, :user, foreign_key: true
  end
end
