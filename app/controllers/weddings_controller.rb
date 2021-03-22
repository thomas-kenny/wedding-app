class WeddingsController < ApplicationController
  def show
  @wedding = Wedding.find(params[:id])
  @rsvp = Rsvp.new
  end

end
