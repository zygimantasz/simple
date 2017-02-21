class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|

      t.references :subject, :foreign_key => true, :null => false

      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible, :default => false

      t.timestamps
    end
#    add_foreign_key :pages, :subjects
    add_index :pages, :permalink
  end
end
