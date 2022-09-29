require 'swagger_helper'

RSpec.describe 'api/v1/motorcycles', type: :request do
  path '/api/v1/motorcycles' do
    get('list motorcycles') do
      tags 'Motorcycles'
      security [{ bearer_auth: [] }]
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/motorcycles/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show motorcycle') do
      tags 'Motorcycles'
      security [{ bearer_auth: [] }]
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/add_motorcycle' do
    post('create motorcycle') do
      tags 'Motorcycles'
      security [{ bearer_auth: [] }]
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :motorcycle, in: :body, schema: {
          type: :object,
          properties: {
            image: { type: :string },
            category_id: { type: :string },
            rental_price: { type: :integer },
            year: { type: :string },
            brand: { type: :string },
            model: { type: :string },
            reserved: { type: :boolean },
            picture: { type: :string }
          },
          required: %w[image category_id rental_price year brand model reserved picture]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/del_motorcycle' do
    delete('delete motorcycle') do
      tags 'Motorcycles'
      security [{ bearer_auth: [] }]
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :motorcycle, in: :body, schema: {
          type: :object,
          properties: {
            id: { type: :integer }
          },
          required: %w[id]
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/update_motorcycle' do
    patch('update motorcycle') do
      tags 'Motorcycles'
      security [{ bearer_auth: [] }]
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
