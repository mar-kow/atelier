require "rails_helper"

RSpec.describe 'routes to the user_reservations', type: :routing do
  it { expect(get: 'users/1/reservations').to route_to('reservations#users_reservations', user_id:'1') }
end

