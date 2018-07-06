require "loremGem/version"

module LoremGem

    Class << self
        def go
          if rails?
            register_rails_engine
          end

          def gem_path
            @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
          end

          def stylesheets_path
            File.join assets_path, 'stylesheets'
          end

          def javascripts_path
            File.join assets_path, 'javascripts'
          end

          def assets_path
            @assets_path ||= File.join gem_path, 'assets'
          end

          def rails?
            defined?(::Rails)
          end

          def register_rails_engine
            require 'loremGem/engine'
          end
      end

      LoremGem.go

end
