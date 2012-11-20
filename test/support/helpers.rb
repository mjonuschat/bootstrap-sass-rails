module Bootstrap
  module Sass
    module Rails
      class Spec < MiniTest::Spec

        private

        def dummy_app
          Dummy::Application
        end

        def dummy_config
          dummy_app.config
        end

        def dummy_assets
          dummy_app.assets
        end

        def dummy_asset(name)
          dummy_assets[name].to_s.strip
        end

      end
    end
  end
end
