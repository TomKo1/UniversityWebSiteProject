class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.string :price

      t.timestamps
    end
  end
end
