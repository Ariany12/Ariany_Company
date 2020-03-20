class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :funcionario_id
      t.string :name
      t.string :position
      t.integer :salary
      t.string :manager_id

      t.timestamps
    end
  end
end
