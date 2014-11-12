module Alchemy
  module TagGallery
    module Essence
      def self.configuration
        @configuration ||= Configuration.new
      end

      def self.configuration=(config)
        @configuration = config
      end

      def self.configure
        yield configuration
      end

      class Configuration
        attr_accessor \
          :default_width,
          :default_height,
          :default_pictures_in_row,
          :default_title,
          :default_alt

        def initialize
          @default_width = 100
          @default_height = 100
          @default_pictures_in_row = 3
          @default_title = ''
          @default_alt = ''
        end
      end
    end
  end
end
