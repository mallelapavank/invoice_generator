class CreateOrganisations < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :phone
      t.string :website
      t.string :logo_url
      t.string :type

      t.timestamps
    end
  end
end
