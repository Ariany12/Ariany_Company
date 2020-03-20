class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :funcionario_id
      t.string :name
      t.integer :salary
      t.string :gmanager_id

      t.timestamps
    end
  end
end
