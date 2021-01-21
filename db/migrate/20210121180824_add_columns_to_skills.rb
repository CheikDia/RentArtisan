class AddColumnsToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :unit_price, :integer
    add_column :skills, :rating, :integer
  end
end
