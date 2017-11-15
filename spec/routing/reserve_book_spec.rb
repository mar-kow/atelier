require "rails_helper"

RSpec.describe 'routes to the reserve_book', type: :routing do
  it { expect(get: 'books/1/reserve').to route_to('reservations#reserve', book_id:'1') }
end
