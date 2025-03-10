# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV["FRONT_URL"], 'https://vercel-heroku-sample-198c1f90b154.herokuapp.com', 'https://vercel-heroku-sample-qdmins1cd-rikus-projects-0196bac5.vercel.app'

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
