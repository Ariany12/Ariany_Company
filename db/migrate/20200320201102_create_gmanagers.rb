class CreateGmanagers < ActiveRecord::Migration[6.0]
  def change
    create_table :gmanagers do |t|
      t.string :funcionario_id
      t.string :name
      t.string :salary

      t.timestamps
    end
  end
end
