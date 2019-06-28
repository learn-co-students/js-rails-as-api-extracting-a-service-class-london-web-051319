class ApplicationController < ActionController::API

   config.middleware.insert_before 0, Rack::Cors do
      allow do
          origins '*'
          resource '*', headers: :any, methods: [:get, :post]
      end
    end

end
