class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :funcionarios, :manager_id, 'integer USING CAST(manager_id AS integer)'
    change_column :managers, :gmanager_id, 'integer USING CAST(gmanager_id AS integer)'
    change_column :gmanagers, :salary, 'integer USING CAST(salary AS integer)'
  end
end
