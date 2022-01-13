class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :commenter
      t.integer :classificacao
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end
