require 'spec_helper'

class UsageCssSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css') }

    it 'will render main bootstrap.less file and all included modules' do
      app_css.must_include 'Bootstrap v'
      app_css.must_include '_reset.scss'
      app_css.must_include '_scaffolding'
      app_css.must_include '_layouts.scss'
      app_css.must_include '_type.scss'
      app_css.must_include '_code.scss'
      app_css.must_include '_forms.scss'
      app_css.must_include '_tables.scss'
      app_css.must_include '_sprites.scss'
      app_css.must_include '_dropdowns.scss'
      app_css.must_include '_wells.scss'
      app_css.must_include '_component-animations.scss'
      app_css.must_include '_close.scss'
      app_css.must_include '_buttons.scss'
      app_css.must_include '_button-groups.scss'
      app_css.must_include '_alerts.scss'
      app_css.must_include '_navs.scss'
      app_css.must_include '_navbar.scss'
      app_css.must_include '_breadcrumbs.scss'
      app_css.must_include '_pagination.scss'
      app_css.must_include '_pager.scss'
      app_css.must_include '_modals.scss'
      app_css.must_include '_tooltip.scss'
      app_css.must_include '_popovers.scss'
      app_css.must_include '_thumbnails.scss'
      app_css.must_include '_media.scss'
      app_css.must_include '_labels-badges.scss'
      app_css.must_include '_progress-bars.scss'
      app_css.must_include '_accordion.scss'
      app_css.must_include '_carousel.scss'
      app_css.must_include '_hero-unit.scss'
    end

    it 'must include basic css afterward' do
      app_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

    it 'must render the correct path for the icon sprites' do
      app_css.wont_include 'image-url'
      app_css.must_include 'twitter/bootstrap/glyphicons-halflings.png'
      app_css.must_include 'twitter/bootstrap/glyphicons-halflings-white.png'
    end

  end

  describe 'no-sprites.css' do

    let(:app_css) { dummy_asset('no-sprites.css') }

    it 'will render main bootstrap-no-sprites.scss file and include alls modules except sprites' do
      app_css.must_include 'Bootstrap v'
      app_css.must_include '_reset.scss'
      app_css.must_include '_scaffolding'
      app_css.must_include '_layouts.scss'
      app_css.must_include '_type.scss'
      app_css.must_include '_code.scss'
      app_css.must_include '_forms.scss'
      app_css.must_include '_tables.scss'
      app_css.must_include '_dropdowns.scss'
      app_css.must_include '_wells.scss'
      app_css.must_include '_component-animations.scss'
      app_css.must_include '_close.scss'
      app_css.must_include '_buttons.scss'
      app_css.must_include '_button-groups.scss'
      app_css.must_include '_alerts.scss'
      app_css.must_include '_navs.scss'
      app_css.must_include '_navbar.scss'
      app_css.must_include '_breadcrumbs.scss'
      app_css.must_include '_pagination.scss'
      app_css.must_include '_pager.scss'
      app_css.must_include '_modals.scss'
      app_css.must_include '_tooltip.scss'
      app_css.must_include '_popovers.scss'
      app_css.must_include '_thumbnails.scss'
      app_css.must_include '_media.scss'
      app_css.must_include '_labels-badges.scss'
      app_css.must_include '_progress-bars.scss'
      app_css.must_include '_accordion.scss'
      app_css.must_include '_carousel.scss'
      app_css.must_include '_hero-unit.scss'
      app_css.wont_include '_sprites.scss'
    end

    it 'must include basic css afterward' do
      app_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

    it 'must not render the path to the icon sprites' do
      app_css.wont_include 'background-image: url(/assets/twitter/bootstrap/glyphicons-halflings.png)'
      app_css.wont_include 'background-image: url(/assets/twitter/bootstrap/glyphicons-halflings-white.png)'
    end

  end

  describe 'individual.scss' do

    let(:individual_css) { dummy_asset('individual.css') }

    it 'will render bootstrap variables and mixins' do
      my_button_line = line_for_individual_css('individual-my-button')
      my_button_line.must_include '-webkit-border-radius: 10px'
      my_button_line.must_include '-moz-border-radius: 10px'
      my_button_line.must_include 'border-radius: 10px'
      individual_css.must_include '_responsive-1200px-min.scss'
      individual_css.must_include '_responsive-767px-max.scss'
      individual_css.must_include '_responsive-768px-979px.scss'
      individual_css.must_include '_responsive-navbar.scss'
      individual_css.must_include '_responsive-utilities.scss'
    end

  end

  describe 'sprockets.css' do

    let(:sprockets_css) { dummy_asset('sprockets.css') }

    it 'will render main bootstrap.css file and all included modules' do
      sprockets_css.must_include 'Bootstrap v'
      sprockets_css.must_include '_reset.scss'
      sprockets_css.must_include '_scaffolding'
      sprockets_css.must_include '_layouts.scss'
      sprockets_css.must_include '_type.scss'
      sprockets_css.must_include '_code.scss'
      sprockets_css.must_include '_forms.scss'
      sprockets_css.must_include '_tables.scss'
      sprockets_css.must_include '_sprites.scss'
      sprockets_css.must_include '_dropdowns.scss'
      sprockets_css.must_include '_wells.scss'
      sprockets_css.must_include '_component-animations.scss'
      sprockets_css.must_include '_close.scss'
      sprockets_css.must_include '_buttons.scss'
      sprockets_css.must_include '_button-groups.scss'
      sprockets_css.must_include '_alerts.scss'
      sprockets_css.must_include '_navs.scss'
      sprockets_css.must_include '_navbar.scss'
      sprockets_css.must_include '_breadcrumbs.scss'
      sprockets_css.must_include '_pagination.scss'
      sprockets_css.must_include '_pager.scss'
      sprockets_css.must_include '_modals.scss'
      sprockets_css.must_include '_tooltip.scss'
      sprockets_css.must_include '_popovers.scss'
      sprockets_css.must_include '_thumbnails.scss'
      sprockets_css.must_include '_labels-badges.scss'
      sprockets_css.must_include '_progress-bars.scss'
      sprockets_css.must_include '_accordion.scss'
      sprockets_css.must_include '_carousel.scss'
      sprockets_css.must_include '_hero-unit.scss'
    end

    it 'must include basic css afterward' do
      sprockets_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

  end

  private

  def line_for_framework_css(name)
    framework_css.each_line.detect{ |line| line.include? name }.strip
  end

  def line_for_individual_css(name)
    individual_css.each_line.detect{ |line| line.include? name }.strip
  end

end
