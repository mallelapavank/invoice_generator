class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
