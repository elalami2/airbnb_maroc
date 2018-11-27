class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.float :rating
      t.string :city
      t.decimal :price, precision: 7, scale: 2
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
