module Alchemy
  class EssenceTagGallery < ActiveRecord::Base
    acts_as_essence(
        ingredient_column: 'tag',
        preview_text_method: 'name'
    )
    belongs_to :tag, class_name: 'Tag', foreign_key: 'tag_id'


    validates_numericality_of :width, :height, :pictures_in_row,
                              :only_integer => true,
                              :greater_than => 0

    after_initialize :init

    def init
      self.width ||= 100
      self.height ||= 100
      self.pictures_in_row ||= 3
    end

    def ingredient
      tag
    end
  end
end
