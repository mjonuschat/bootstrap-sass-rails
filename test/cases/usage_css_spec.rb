require 'spec_helper'

class UsageCssSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css').gsub(/\n+\s+/, ' ') }

    it 'will render main bootstrap.less file and all included modules' do
      app_css.must_include 'Bootstrap v'

      app_css.must_include '.alert {'
      app_css.must_include '.badge {'
      app_css.must_include '.breadcrumb {'
      app_css.must_include '.btn-group-vertical {'
      app_css.must_include '.btn {'
      app_css.must_include '.carousel {'
      app_css.must_include '.close {'
      app_css.must_include 'pre {'
      app_css.must_include '.fade {'
      app_css.must_include '.input-group {'
      app_css.must_include '.glyphicon {'
      app_css.must_include '.dropdown-menu {'
      app_css.must_include '.form-control {'
      app_css.must_include '.container {'
      app_css.must_include '.jumbotron {'
      app_css.must_include '.label {'
      app_css.must_include '.list-group {'
      app_css.must_include '.media-body {'
      app_css.must_include '.modal-open {'
      app_css.must_include '.navbar {'
      app_css.must_include '.nav {'
      app_css.must_include 'git.io/normalize'
      app_css.must_include '.pager {'
      app_css.must_include '.pagination {'
      app_css.must_include '.panel {'
      app_css.must_include '.popover {'
      app_css.must_include '@media print {'
      app_css.must_include '.progress {'
      app_css.must_include '.hidden {'
      app_css.must_include 'html {'
      app_css.must_include '.table {'
      app_css.must_include '.thumbnail {'
      app_css.must_include '.tooltip {'
      app_css.must_include '.lead {'
      app_css.must_include '.pull-right {'
      app_css.must_include '.well {'
    end

    it 'must include basic css afterward' do
      app_css.must_include '#other-css { color: red; }',  'From our code afterward.'
    end

  end

  describe 'individual.scss' do

    let(:individual_css) { dummy_asset('individual.css').gsub(/\n+\s+/, ' ') }

    it 'will render bootstrap variables and mixins' do
      my_button_line = line_for_individual_css('individual-my-button')
      my_button_line.must_include '-webkit-transform: rotate(180);'
      my_button_line.must_include '-ms-transform: rotate(180);'
      my_button_line.must_include 'transform: rotate(180);'
      individual_css.must_include 'glyphicons-halflings-regular.eot'
      individual_css.must_include 'glyphicons-halflings-regular.ttf'
      individual_css.must_include 'glyphicons-halflings-regular.svg'
      individual_css.must_include 'glyphicons-halflings-regular.woff'
    end

  end

  describe 'sprockets.css' do

    let(:sprockets_css) { dummy_asset('sprockets.css').gsub(/\n+\s+/, ' ') }

    it 'will render main bootstrap.css file and all included modules' do
      sprockets_css.must_include 'Bootstrap v'
      sprockets_css.must_include '.alert {'
      sprockets_css.must_include '.badge {'
      sprockets_css.must_include '.breadcrumb {'
      sprockets_css.must_include '.btn-group-vertical {'
      sprockets_css.must_include '.btn {'
      sprockets_css.must_include '.carousel {'
      sprockets_css.must_include '.close {'
      sprockets_css.must_include 'pre {'
      sprockets_css.must_include '.fade {'
      sprockets_css.must_include '.input-group {'
      sprockets_css.must_include '.glyphicon {'
      sprockets_css.must_include '.dropdown-menu {'
      sprockets_css.must_include '.form-control {'
      sprockets_css.must_include '.container {'
      sprockets_css.must_include '.jumbotron {'
      sprockets_css.must_include '.label {'
      sprockets_css.must_include '.list-group {'
      sprockets_css.must_include '.media-body {'
      sprockets_css.must_include '.modal-open {'
      sprockets_css.must_include '.navbar {'
      sprockets_css.must_include '.nav {'
      sprockets_css.must_include 'git.io/normalize'
      sprockets_css.must_include '.pager {'
      sprockets_css.must_include '.pagination {'
      sprockets_css.must_include '.panel {'
      sprockets_css.must_include '.popover {'
      sprockets_css.must_include '@media print {'
      sprockets_css.must_include '.progress {'
      sprockets_css.must_include '.hidden {'
      sprockets_css.must_include 'html {'
      sprockets_css.must_include '.table {'
      sprockets_css.must_include '.thumbnail {'
      sprockets_css.must_include '.tooltip {'
      sprockets_css.must_include '.lead {'
      sprockets_css.must_include '.pull-right {'
      sprockets_css.must_include '.well {'
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
