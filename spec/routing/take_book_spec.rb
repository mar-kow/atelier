require "rails_helper"

RSpec.describe 'routes to the take_book', type: :routing do
  it { expect(get: 'books/1/take').to route_to('reservations#take', book_id:'1') }
end
