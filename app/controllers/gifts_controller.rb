class GiftsController < ApplicationController
  def index
    @gifts = Gift.where(purchased: false)
  end

  def purchased
    @gifts = Gift.where(purchased: true)
  end
end
