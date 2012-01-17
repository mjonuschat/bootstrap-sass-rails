module Bootstrap::Sass::Extensions::Functions
  # Snatched from compass 0.11 - used for gradients in IE6-9
  # returns an IE hex string for a color with an alpha channel
  # suitable for passing to IE filters.
  def ie_hex_str(color)
    assert_type color, :Color
    alpha = (color.alpha * 255).round
    alphastr = alpha.to_s(16).rjust(2, '0')
    Sass::Script::String.new("##{alphastr}#{color.send(:hex_str)[1..-1]}".upcase)
  end
end

module Sass::Script::Functions
  include Bootstrap::Sass::Extensions::Functions
end
