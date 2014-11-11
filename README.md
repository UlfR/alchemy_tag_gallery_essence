# Alchemy CMS TagGallery Essence

Adds EssenceTagGallery essence to your Alchemy CMS powered site.

This version is compatible with Alchemy version 3.0 and above only.

## Installation

**Make sure you have Alchemy CMS installed.**

Add this line to your application's Gemfile:

    gem 'alchemy_tag_gallery_essence'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alchemy_tag_gallery_essence

## Usage

1. After installing, prepare your database with:

        $ rake alchemy_tag_gallery_essence:install:migrations db:migrate

2. In your `elements.yml` add new essence to your element of choice.

        # elements.yml
        - name: content
          contents:
          - name: gallery
            type: EssenceTagGallery

That's it!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
