require 'swagger_helper'

RSpec.describe 'api/reservations', type: :request do
  # rubocop:disable Metrics/BlockLength
  path '/reservations' do
    get('list all Reservation') do
      tags 'reservations'
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
    post('add a reservation') do
      tags 'create reservations'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          reservation: {
            type: :object,
            properties: {
              user_id: { type: :integer },
              item_id: { type: :integer },
              start_date: { type: :string },
              end_date: { type: :string },
            },
            required: %w[user_id item_id start_date end_date]
          }
        }
      }
    end
  end

  path '/reservations/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'
    get 'Get a Reservation' do
      tags 'reservation'
      consumes 'application/json', 'application/xml'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Reservation ' do
        let(:user) { User.create(name: 'user', email: 'test@gmail.com', password: '123456') }
        let(:item) do
          Item.create(name: 'Gints', title: 'Speciality', description: 'Really a good dr.', image: 'https://avatars.githubusercontent.com/u/43877689?v=4', price: 100, location: 'LA')
        end

        let(:id) { Reservation.create(user:, item:, start_time: '2022-05-19', end_time: '2022-05-20', visit_type: 'reservation1').id }

        run_test!
      end
    end
  end
end

RSpec.describe 'Reservation', type: :request do
    path '/reservations' do
      post('create Reservation') do
        tags 'Reservation'
        consumes 'application/json'
        parameter name: :reservation, in: :body, required: true, schema: {
          type: :object,
          properties: {
            reservation: {
              type: :object,
              properties: {
            user_id: { type: :integer },
            item_id: { type: :integer },
            start_date: { type: :string },
            end_date: { type: :string },
              },
              required: %w[user_id item_id start_date end_date]
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
          let(:reservation) { { user_id: 1, item_id: 1, start_date: '12/12/1', end_date: '12/12/1'} }
  
          run_test!
        end
      end
    end
    # rubocop:enable Metrics/BlockLength
  end
