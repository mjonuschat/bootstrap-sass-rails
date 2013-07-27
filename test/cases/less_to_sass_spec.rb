require 'spec_helper'

class LessToSassSpec < Bootstrap::Sass::Rails::Spec

  describe 'application.css' do

    let(:app_css) { dummy_asset('application.css').gsub(/\n+\s+/, ' ') }

    it 'should include the clearfix helper classes' do
      app_css.must_include '.clearfix:before, .clearfix:after { content: " "; /* 1 */ display: table; /* 2 */ }'
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
