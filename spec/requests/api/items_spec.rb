require 'swagger_helper'

RSpec.describe '/items', type: :request do
  path '/items' do
    get('list Items') do
      tags 'Items'
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

  post('get an item') do
    tags 'Items'
    parameter name: :item, in: :body, required: true, schema: {
      type: :object,
      properties: {
        item: {
          type: :object,
          properties: {
            name: { type: :string },
            title: { type: :string },
            price: { type: :integer },
            description: { type: :string },
            location: { type: :string },
            image: { type: :string }
          },
          required: %w[name price description location image]
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
        let(:item) do
          { name: 'Gints', title: 'Speciality', description: 'Really a good dr.', image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 100, location: 'LA' }
        end
        run_test!
      end
    end
  end
end

RSpec.describe '/items', type: :request do
  path '/items/{id}' do
    get 'Retrieves a Item' do
      tags 'Items'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'user found' do
        let(:id) { Item.create(name: 'Gints', title: 'Speciality', description: 'Really a good dr.', image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 100, location: 'LA').id }
        run_test!
      end
    end
  end
end

RSpec.describe 'Items', type: :request do
  path '/items' do
    post('create Items') do
      tags 'Items'
      consumes 'application/json'
      parameter name: :item, in: :body, required: true, schema: {
        type: :object,
        properties: {
          item: {
            type: :object,
            properties: {
              name: { type: :string },
              title: { type: :string },
              price: { type: :integer },
              description: { type: :string },
              location: { type: :string },
              image: { type: :string }
            },
            required: %w[name price description location image]
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
        let(:item) { { name: 'foo', description: 'bar', price: 100, location: 'LA', image: 'https://avatars.githubusercontent.com/u/43877689?v=4' } }

        run_test!
      end
    end
  end
end
