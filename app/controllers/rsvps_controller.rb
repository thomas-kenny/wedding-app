class RsvpsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show]
  def create
    @wedding = Wedding.first
    @rsvp = Rsvp.new(rsvp_params)
    @rsvp.wedding = @wedding
    if @rsvp.save
      redirect_to rsvp_path(@rsvp)
    else
      flash[:alert] = "RSVP was not sent"
      render 'weddings/show'
    end
  end

  def index
    @rsvps = Rsvp.all
  end

  def show
    @rsvp = Rsvp.find(params[:id])
  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :attending, :dietary_requirements, :songs, :email)
  end
end
