require 'spec_helper'

describe Destination do
  let(:destination) { Destination.create(city: 'New York', country: 'United States', category: 'volunteer')}

  describe '#lat_lng' do
    context 'when given :city and :country for destination' do
      it 'gives back latitude and longitude coordinates' do
        expect(destination.lat_lng).to eq({lat: 40.7143528, lng: -74.00597309999999})
      end
    end
  end
end
