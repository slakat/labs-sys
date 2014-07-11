class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :model
      t.string :sub_model
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
