class CreateSnaps < ActiveRecord::Migration[5.2]
  def change
    create_table :snaps do |t|

      t.references :sender
      t.references :reciever
      t.boolean :viewed
      t.integer :timer
      t.string :dataUri
      t.string :stickerUrl

      t.timestamps
    end
  end
end
