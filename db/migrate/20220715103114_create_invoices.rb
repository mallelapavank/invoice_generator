class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :invoice_number
      t.text :tnc
      t.text :notes
      t.datetime :due_date
      t.decimal :adjustments

      t.timestamps
    end
  end
end
