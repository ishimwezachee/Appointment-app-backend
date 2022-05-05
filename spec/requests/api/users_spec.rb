require 'swagger_helper'

RSpec.describe '/users', type: :request do
    path '/users' do

        post 'Creates a user' do
          tags 'Users'
          consumes 'application/json'
          parameter name: :user, in: :body, schema: {
            type: :object,
            properties: {
              name: { type: :string },
              email: { type: :string },
              password: { type: :string },
              password_confirmation: { type: :string }
            },
            required: [ 'name', 'email', 'password', 'password_confirmation' ]
          }
    
          response '201', 'user created' do
            let(:user) { { name: 'foo', email: 'bar', password: '123456', password_confirmation: '123456'  } }
            run_test!
          end
    
          response '422', 'invalid request' do
            let(:user) { { name: 'foo', email: 'bar' } }
            run_test!
          end
        end
      end


  path '/users/{id}' do
    get 'Retrieves a User' do
      tags 'Users'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :string

      response '200', 'user found' do
        let(:id) { User.create(name: 'foo', email: 'bar', password: '123456', password_confirmation: '123456').id }
        run_test!
      end
    end
  end
end
