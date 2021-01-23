class AddColumnToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :description, :text
  end
end
