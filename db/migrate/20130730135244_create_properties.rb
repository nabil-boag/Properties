class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.string :city
      t.decimal :amount
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
