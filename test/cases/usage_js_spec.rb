require 'spec_helper'

class UsageJsSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.js' do

    let(:app_js) { dummy_asset('application.js') }

    it 'will render main bootstrap.js file and all included modules' do
      app_js.must_include 'affix.js'
      app_js.must_include 'alert.js'
      app_js.must_include 'button.js'
      app_js.must_include 'carousel.js'
      app_js.must_include 'collapse.js'
      app_js.must_include 'dropdown.js'
      app_js.must_include 'modal.js'
      app_js.must_include 'popover.js'
      app_js.must_include 'scrollspy.js'
      app_js.must_include 'tab.js'
      app_js.must_include 'tooltip.js'
      app_js.must_include 'transition.js'
    end

    it 'must include basic js afterward' do
      app_js.must_include '$(document).ready(function(){...});'
    end

  end

  describe 'individual.js' do

    let(:individual_js) { dummy_asset('individual.js') }

    it 'will render bootstrap variables and mixins' do
      individual_js.must_include 'modal.js'
    end

  end

end
