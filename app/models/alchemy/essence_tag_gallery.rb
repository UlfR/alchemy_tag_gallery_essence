module Alchemy
  class EssenceTagGallery < ActiveRecord::Base
    acts_as_essence(
        ingredient_column: 'tag_id',
        preview_text_method: 'name'
    )
    belongs_to :tag, class_name: 'Alchemy::Tag', foreign_key: 'tag_id'


    validates_numericality_of :width, :height, :pictures_in_row,
                              :only_integer => true,
                              :greater_than => 0

    after_initialize :init

    def init
      self.width ||= Alchemy::TagGallery::Essence.configuration.default_width
      self.height ||= Alchemy::TagGallery::Essence.configuration.default_height
      self.pictures_in_row ||= Alchemy::TagGallery::Essence.configuration.default_pictures_in_row
      self.title ||= Alchemy::TagGallery::Essence.configuration.default_title
      self.alt ||= Alchemy::TagGallery::Essence.configuration.default_alt
    end

    def ingredient
      tag
    end
  end
end
