class WeddingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
  @wedding = Wedding.first
  @rsvp = Rsvp.new
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers =
      {
        lat: @wedding.latitude,
        lng: @wedding.longitude
      }
  end
end
