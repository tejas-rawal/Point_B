require 'spec_helper'

describe Destination do
  let(:destination) { Destination.create(city: 'New York', country: 'United States', category: 'volunteer')}
  let(:destination2) { Destination.create(city: 'Austin', country: 'United States', category: 'adventure')}

  describe '#snippet' do
    context 'when provided with a long description for the destination' do
      it 'truncates the text to 200 characters' do
        destination.description = 'New York, New York: a city so nice they named it twice, and a city so colorful it has stood at the forefront of the American imagination for decades. Artists, filmmakers, intellectuals, designers, and more have long tried to capture the essence of the city, fetishizing its skyline, dramatizing its streets, and immortalizing the diversity of people that call the five boroughs home.'
        expect(destination.snippet.length).to eq 200

        destination2.description = 'Austin is a city and capital of the U.S. state of Texas. Austin has a population of 681,804 people, making it the fourth-largest city in Texas and the 16th largest in the United States. Austin is the county seat of Travis County and is situated in Central Texas. The Austin—Round Rock metropolitan area, a title designated by the U.S. Census, is one of the fastest-growing in the United States and is home to an estimated population of 1,377,633 in 2003.'
        expect(destination2.snippet.length).to eq 200
      end
    end
  end

  describe '#country_code' do
    context'when provided with the country of a specific destination' do
      it 'returns the international country code for that country' do
        expect(destination.country_code).to eq 'us'

        destination3 = Destination.create(city: 'Madrid', country: 'Spain')
        expect(destination3.country_code).to eq 'es'
      end
    end
  end

  describe '#lat_lng' do
    context 'when given :city and :country for destination' do
      it 'gives back latitude and longitude coordinates' do
        expect(destination.lat_lng).to eq({lat: 40.7143528, lng: -74.00597309999999})
        expect(destination2.lat_lng).to eq({lat: 30.267153, lng: -97.7430608})
      end
    end
  end

  describe '.search' do
    context 'when provided search criteria for a destination' do
      it 'returns an array of destinations that match the search criteria' do
        Destination.create(city: 'New York', country: 'United States')
        Destination.create(city: 'New York', country: 'United States')
        Destination.create(city: 'Austin', country: 'United States')

        result1 = Destination.search('New York')
        result2 = Destination.search('Austin')

        expect(result1.class).to eq Array
        expect(result2.class).to eq Array
        expect(result1.length).to eq 2
        expect(result2.length).to eq 1
      end
    end
  end
end
