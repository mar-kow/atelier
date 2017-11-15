require "rails_helper"

RSpec.describe 'routes to the cancel_reservation', type: :routing do
  it { expect(get: 'books/1/cancel_reservation').to route_to('reservations#cancel', book_id:'1') }
end
