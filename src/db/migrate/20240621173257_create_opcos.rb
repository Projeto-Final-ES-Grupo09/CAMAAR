class CreateOpcos < ActiveRecord::Migration[7.1]
  def change
    create_table :opcos do |t|
      t.string :texto
      t.boolean :alternativa
      t.references :questao, null: false, foreign_key: true

      t.timestamps
    end
  end
end
