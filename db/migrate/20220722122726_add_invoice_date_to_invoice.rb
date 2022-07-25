class AddInvoiceDateToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :generation_date, :datetime
  end
end
