class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|

      t.references :friender
      t.references :friendee
      t.boolean :accepted

      t.timestamps
    end
  end
end
