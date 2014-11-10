require "alchemy_tag_gallery_essence/ability"

module Alchemy
  module TagGallery
    module Essence
      class Engine < Rails::Engine
        engine_name 'alchemy_tag_gallery_essence'
        config.mount_at = '/'

        initializer "alchemy_tag_gallery_essence.register_ability" do
          Alchemy.register_ability Alchemy::TagGallery::Essence::Ability
        end
      end
    end
  end
end
