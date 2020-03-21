class RemoveColumnfuncionariosId < ActiveRecord::Migration[6.0]
  def change
    remove_column :gmanagers, :funcionario_id, :string
    remove_column :managers, :funcionario_id, :string
    remove_column :funcionarios, :funcionario_id, :string
  end
end
