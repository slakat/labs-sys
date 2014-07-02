class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type
      t.string :model
      t.string :image

      t.timestamps
    end
  end
end
