class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :gifts, :travel ]
  def home
    @wedding = Wedding.first
  end

  def gifts
  end

  def travel
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
