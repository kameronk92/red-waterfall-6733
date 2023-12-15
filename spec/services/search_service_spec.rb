require 'rails_helper'

RSpec.describe SearchService do
  context '#conn' do
    it 'returns a Faraday connection' do
      conn = SearchService.conn

      expect(conn).to be_a(Faraday::Connection)
    end
  end

  context '#get_url' do
    it 'returns a parsed response' do
      VCR.use_cassette('fire nation characters') do
        response = SearchService.get_url('characters?affiliation=Fire+Nation')

        expect(response).to be_an(Array)
        expect(response.first).to have_key(:name)
      end
    end
  end
end