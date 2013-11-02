module Bootstrap
  module Sass
    module Rails
      class Engine < ::Rails::Engine
        initializer :setup_bootstrap_sass_rails, group: :all do |app|
          # Ten significant digits precision is required for calculations
          # to work out in Bootstrap 3.0 - to match LESS/JS calculations
          # bump the default precision to match IEEE-754 double precision
          # floating point requirements
          if ::Sass::Script::Number.precision < 10
            ::Sass::Script::Number.precision = 15
          end
        end
      end
    end
  end
end
