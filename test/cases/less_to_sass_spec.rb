require 'spec_helper'

class LessToSassSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css') }

    it 'should include a class for block level inputs' do
      app_css.must_include '.input-block-level {'
    end

    it 'should include the clearfix helper classes' do
      app_css.must_include '.clearfix { *zoom: 1; }'
      app_css.must_include '.clearfix:before, .clearfix:after { display: table; content: ""; line-height: 0; }'
      app_css.must_include '.clearfix:after { clear: both; }'
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
