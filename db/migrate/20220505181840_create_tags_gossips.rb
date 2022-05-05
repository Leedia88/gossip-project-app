class CreateTagsGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :tags_gossips do |t|
      t.references :tag, foreign_key: true
      t.references :gossip, foreign_key: true

      t.timestamps
    end
  end
end
