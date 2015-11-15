class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :folder_name
      t.string :title
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
