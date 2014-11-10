class CreateAlchemyTagGalleryEssences < ActiveRecord::Migration
  def change
    return if table_exists?(:alchemy_essence_tag_galleries)
    create_table :alchemy_essence_tag_galleries do |t|
      t.references :tag
      t.boolean :show_image_titles, :null => false, :default => false
      t.integer :width
      t.integer :height
      t.integer :pictures_in_row
      t.timestamps
    end
    add_index :alchemy_essence_belka_tag_galleries, :tag_id
  end
end
