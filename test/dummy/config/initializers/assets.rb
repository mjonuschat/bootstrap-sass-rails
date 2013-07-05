# Asset Pipeline
if Rails::VERSION::MAJOR == 4
  Dummy::Application.config.assets.css_compressor = false
else
  Dummy::Application.config.assets.compress = false
end
