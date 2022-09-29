require 'rails_helper'

RSpec.configure do |config| # rubocop:todo Metrics/BlockLength
  config.swagger_root = Rails.root.join('swagger').to_s
  config.swagger_docs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'BookRacers API',
        version: 'v1'
      },
      paths: {},
      components: {
        securitySchemes: {
          bearer_auth: {
          type: :http,
          scheme: :bearer,
          bearer_format: :JWT,
          },
        },
      }, 
      tags: [
        {
          name: 'Users',
          description: 'User API endpoint requests'
        },
        {
          name: 'Categories',
          description: 'Category API endpoint requests'
        },
        {
          name: 'Motorcycles',
          description: 'Motorcycle API endpoint requests'
        },
        {
          name: 'Reservations',
          description: 'Reservation API endpoint requests'
        }
      ],
      servers: [
        {
          url: 'http://{defaultHost}',
          variables: {
            defaultHost: {
              default: 'localhost:3001'
            }
          }
        }
      ]
    }
  }

  # Specify the format of the output Swagger file when running 'rswag:specs:swaggerize'.
  # The swagger_docs configuration option has the filename including format in
  # the key, this may want to be changed to avoid putting yaml in json files.
  # Defaults to json. Accepts ':json' and ':yaml'.
  config.swagger_format = :yaml
end
