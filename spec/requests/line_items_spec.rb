require 'rails_helper'

RSpec.describe 'Line Items', type: :request do
  let(:line_item) { FactoryBot.create(:line_item) }
  let(:line_item_id) { line_item.id }

  describe 'GET /line_items' do
    before { get '/line_items' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /line_items/:id' do
    before { get "/line_items/#{line_item_id}" }

    context 'when the record exists' do
      it 'returns the line item' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(line_item_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:line_item_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find/)
      end
    end
  end
end