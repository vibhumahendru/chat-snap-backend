class AddUniqueRelationships < ActiveRecord::Migration[5.2]
  def change
    add_index :relationships,[:friender_id, :friendee_id], unique: true
  end
end
