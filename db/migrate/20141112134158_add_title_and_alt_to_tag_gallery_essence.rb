class AddTitleAndAltToTagGalleryEssence < ActiveRecord::Migration
  def change
    change_table :alchemy_essence_tag_galleries do |t|
      t.string :title, :null => false, :default => ''
      t.string :alt, :null => false, :default => ''
    end
  end
end
