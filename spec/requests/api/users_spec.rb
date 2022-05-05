require 'swagger_helper'

RSpec.describe '/users', type: :request do
  path '/users' do
    get('list users') do
      tags 'Users'
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

  post('create an User') do
    tags 'Users'
    parameter name: :user, in: :body, required: true, schema: {
      type: :object,
      properties: {
        user: {
          type: :object,
          properties: {
            name: { type: :string },
            email: { type: :string },
            password: { type: :string },
            password_confirmation: { type: :string }
          },
          required: %w[name email password password_confirmation]
        }
      }
    }
    response(201, 'successful') do
      after do |example|
        example.metadata[:response][:content] = {
          'application/json' => {
            example: JSON.parse(response.body, symbolize_names: true)
          }
        }
        let(:user) do
          { name: 'Gints', email: 'foo', password: '123456', password_confirmation: '123456' }
        end
        run_test!
      end
    end
  end
end

RSpec.describe '/users', type: :request do
  path '/users/{id}' do
    get 'Retrieves a User' do
      tags 'Users'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'user found' do
        let(:id) do
          User.create(name: 'Gints', email: 'foo', password: '123456', password_confirmation: '123456').id
        end
        run_test!
      end
    end
  end
end

RSpec.describe 'users post', type: :request do
  path '/users' do
    post('create user') do
      tags 'Users'
      consumes 'application/json'
      parameter name: :user, in: :body, required: true, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              name: { type: :string },
              email: { type: :string },
              password: { type: :string}, 
              password_confirmation: { type: :string} 
            },
            required: %w[name email password]
          }
        }
      }
      response(201, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        let(:user) { { name: 'foo', email: 'bar' } }

        run_test!
      end
    end
  end
end
