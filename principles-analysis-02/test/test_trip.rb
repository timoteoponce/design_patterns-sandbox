require 'minitest/autorun'
require_relative '../lib/trip/trip'

class TestTrip < Minitest::Test
  def test_smoke
    trip = Trip.new(%w[Winchi Kendall Kichute], %w[Liyina Maya Ingrid], 'Audi TT 4')
    assert trip.prepare_trip
  end
end
