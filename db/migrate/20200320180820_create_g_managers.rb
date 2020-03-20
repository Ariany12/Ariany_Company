class CreateGManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :g_managers do |t|
      t.string :funcionario_id
      t.string :name
      t.integer :salary

      t.timestamps
    end
  end
end
