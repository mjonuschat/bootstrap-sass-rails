module Bootstrap
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer :after_append_asset_paths, :group => :all, :after => :append_assets_path do |app|
          ::Bootstrap.load!
          app.config.assets.paths.unshift File.join(::Bootstrap.stylesheets_path, 'bootstrap')
        end
      end
    end
  end
end
