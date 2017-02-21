class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|

#      t.integer :page_id, :null => false
      t.references :page, :foreign_key => true, :null => false
      t.string :name
      t.integer :position
      t.boolean :visible, :default => false
      t.string :content_type
      t.text :content

      t.timestamps
    end
#    add_foreign_key :sections, :pages
  end
end
