module Yitheme
  class Engine < ::Rails::Engine
    isolate_namespace Yitheme
    
     #   initializer "static assets" do |app|
  #    app.middleware.use ::ActionDispatch::Static, "#{root}/app/assets"
  #  end
    
    initializer "static assets" do |app|
  app.middleware.insert_before ::Rack::Lock, ::ActionDispatch::Static, "#{root}/app/assets"
end
 #config.yitheme = ActiveSupport::OrderedOptions.new
      
     # Set an explicit base path for TinyMCE assets (usually defaults to /assets/tinymce)
   #   config.yitheme.base = nil

  end
end
