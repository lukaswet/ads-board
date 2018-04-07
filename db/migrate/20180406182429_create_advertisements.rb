class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|
      t.string :type
      t.string :title
      t.integer :price
      t.text :details
      t.string :region
      t.string :city
      t.string :address
      t.string :phone
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
