class WeddingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    @wedding = Wedding.first
    @rsvp = Rsvp.new
    @weddings = Wedding.all
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @weddings.geocoded.map do |wedding|
      {
        lat: wedding.latitude,
        lng: wedding.longitude
      }
    end
  end
end
