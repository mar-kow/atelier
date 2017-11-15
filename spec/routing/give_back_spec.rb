require "rails_helper"

RSpec.describe 'routes to the give_back_book', type: :routing do
  it { expect(get: 'books/1/give_back').to route_to('reservations#give_back', book_id:'1') }
end
