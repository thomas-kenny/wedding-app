class WeddingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
  @wedding = Wedding.find(params[:id])
  @rsvp = Rsvp.new
  end

end
