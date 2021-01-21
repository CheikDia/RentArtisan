class RemoveColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :pricing, :integer
    remove_column :users, :rating, :integer
  end
end
