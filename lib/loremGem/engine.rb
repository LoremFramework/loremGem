require 'autoprefixer-rails'
  module LoremGem
      module Rails
          class Engine < ::Rails::Engine
            initializer 'loremGem.assets' do |app|
              %w(stylesheets javascripts).each do |sub|
                app.config.assets.paths << root.join('assets', sub).to_s
              end
            end
          end
      end
  end
