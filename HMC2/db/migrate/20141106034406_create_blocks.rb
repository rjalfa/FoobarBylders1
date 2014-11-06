class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :head
      t.text :description
      t.string :image
      t.references :poll, index: true

      t.timestamps
    end
  end
end
