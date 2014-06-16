class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :type
      t.integer :model
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
