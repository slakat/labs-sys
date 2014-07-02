class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :Categories, :type, :model
  	rename_column :Categories, :model, :sub_model
  end
end
