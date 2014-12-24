module AlchemyTagGalleryEssence
  class ViewsGenerator < Rails::Generators::Base

    source_root File.expand_path('../../../app/views/alchemy/essences', __FILE__)

    desc ''
    def copy_views_files
      # create_file "config/initializers/initializer.rb", "# Add initialization content here"
      puts 'test'
      filename_pattern = File.join self.class.source_root, '*.html.erb'
      puts filename_pattern
      Dir.glob(filename_pattern).map {|f| File.basename f}.each do |f|
        puts f
        copy_file f, "app/views/alchemy/essences/#{f}"
      end
    end
  end
end