class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
    @wedding = Wedding.first
  end

  def gifts
  end

end
