require "diaspora/vector/web/version"

module Diaspora
  module Vector
    module Web
        class Engine < ::Rails::Engine
            if Rails.env.development?
                initializer "static assets" do |app|
                    app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
                end
            end
        end
    end
  end
end
