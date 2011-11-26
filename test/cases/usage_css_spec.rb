require 'spec_helper'

class UsageCssSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css') }

    it 'will render main bootstrap.less file and all included modules' do
      app_css.must_include 'Bootstrap @VERSION',          'From bootstrap.css.scss'
      app_css.must_include 'Forms.scss',                  'From forms.scss'
      app_css.must_include 'Snippets of reusable CSS',    'From mixins.scss'
      app_css.must_include 'Patterns.scss',               'From patterns.scss'
      app_css.must_include 'Scaffolding',                 'From scaffolding.scss'
      app_css.must_include 'Tables.scss',                 'From tables.scss'
      app_css.must_include 'Typography.scss',             'From type.scss'
      app_css.must_include 'Variables.scss',              'From variables.scss'
    end

    it 'must include basic css afterward' do
      app_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

  end

  describe 'individual.scss' do

    let(:individual_css) { dummy_asset('individual.css') }

    it 'will render bootstrap variables and mixins' do
      my_button_line = line_for_individual_css('individual-my-button')
      my_button_line.must_include '-webkit-border-radius: 10px'
      my_button_line.must_include '-moz-border-radius: 10px'
      my_button_line.must_include 'border-radius: 10px'
    end

  end

  describe 'sprockets.css' do

    let(:sprockets_css) { dummy_asset('sprockets.css') }

    it 'will render main bootstrap.css file and all included modules' do
      sprockets_css.must_include 'Bootstrap @VERSION',          'From boostrap.css.scss'
      sprockets_css.must_include 'Forms.scss',                  'From forms.scss'
      sprockets_css.must_include 'Snippets of reusable CSS',    'From mixins.scss'
      sprockets_css.must_include 'Patterns.scss',               'From patterns.scss'
      sprockets_css.must_include 'Scaffolding',                 'From scaffolding.scss'
      sprockets_css.must_include 'Tables.scss',                 'From tables.scss'
      sprockets_css.must_include 'Typography.scss',             'From type.scss'
      sprockets_css.must_include 'Variables.scss',              'From variables.scss'
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
