require 'rails_helper'

describe 'Todos API', type: :request do
	it 'returns all todos' do
		get '/api/v1/todos'
		expect(response).to have_http_status(:success)
	end

	it 'checks if the api has two objects' do
		FactoryBot.create(:todo, title: "this is it", completed: false)
		FactoryBot.create(:todo, title: "AMA buy a dragon", completed: true)
		get '/api/v1/todos'
		expect(JSON.parse(response.body).size).to eq(2)
	end

end