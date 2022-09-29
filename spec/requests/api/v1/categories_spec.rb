require 'swagger_helper'

RSpec.describe 'api/v1/categories', type: :request do
  path '/api/v1/categories' do
    get('list categories') do
      tags 'Categories'
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

  path '/api/v1/categories/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show category') do
      tags 'Categories'
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

  path '/api/v1/add_category' do
    post('create category') do
      tags 'Categories'
      security [{ bearer_auth: [] }] 
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :category, in: :body, schema: {
          type: :object,
          properties: {
            catname: { type: :string },
            image: { type: :string },
            picture: { type: :string }
          },
          required: %w[catname image picture]
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

  path '/api/v1/del_category' do
    delete('delete category') do
      tags 'Categories'
      security [{ bearer_auth: [] }] 
      response(200, 'successful') do
        consumes 'application/json'
        parameter name: :category, in: :body, schema: {
          type: :object,
          properties: {
            catname: { type: :string },
            id: { type: :integer }
          },
          required: %w[id catname]
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
end
