class RenameTableGmanagers < ActiveRecord::Migration[6.0]
  def change
    rename_table :g_managers, :gmanager
  end
end
