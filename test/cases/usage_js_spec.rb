require 'spec_helper'

class UsageJsSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.js' do

    let(:app_js) { dummy_asset('application.js') }

    it 'will render main bootstrap.js file and all included modules' do
      app_js.must_include 'bootstrap-alert.js'
      app_js.must_include 'bootstrap-button.js'
      app_js.must_include 'bootstrap-carousel.js'
      app_js.must_include 'bootstrap-collapse.js'
      app_js.must_include 'bootstrap-dropdown.js'
      app_js.must_include 'bootstrap-modal.js'
      app_js.must_include 'bootstrap-popover.js'
      app_js.must_include 'bootstrap-scrollspy.js'
      app_js.must_include 'bootstrap-tab.js'
      app_js.must_include 'bootstrap-tooltip.js'
      app_js.must_include 'bootstrap-transition.js'
      app_js.must_include 'bootstrap-typeahead.js'
      app_js.must_include 'bootstrap-affix.js'
    end

    it 'must include basic js afterward' do
      app_js.must_include '$(document).ready(function(){...});'
    end

  end

  describe 'individual.js' do

    let(:individual_js) { dummy_asset('individual.js') }

    it 'will render bootstrap variables and mixins' do
      individual_js.must_include 'bootstrap-modal.js'
    end

  end

end
