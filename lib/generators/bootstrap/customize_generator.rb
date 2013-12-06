require 'rails/generators'

module Bootstrap
  class CustomizeGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    class_option :customize_variables, type: :boolean, default: true, desc: 'Customize variables to define colors, sizes and more inside your custom stylesheets'
    class_option :css_components, type: :boolean, default: false, desc: 'Choose which SCSS files to compile into your custom build of Bootstrap'
    class_option :js_components, type: :boolean, default: false, desc: 'Choose which JS files to compile into your custom build of Bootstrap'

    # Copy all needed stylesheets in the asset directory of the application
    def customize_default_variables
      template "bootstrap-custom.css.scss", "app/assets/stylesheets/bootstrap-custom.css.scss"
    end

    def customize_css_components
      if options.css_components?
        append_file "app/assets/stylesheets/bootstrap-custom.css.scss" do
          File.read File.expand_path("../../../../app/assets/stylesheets/twitter/bootstrap.css.scss", __FILE__)
        end
      end
    end

    def customize_js_components
      if options.js_components?
        template "bootstrap-custom.js", "app/assets/javascripts/bootstrap-custom.js"
        append_file "app/assets/javascripts/bootstrap-custom.js" do
          File.read File.expand_path("../../../../app/assets/javascripts/twitter/bootstrap.js", __FILE__)
        end
      end
    end

    def show_usage
      readme "USAGE" if behavior == :invoke
    end
  end
end
