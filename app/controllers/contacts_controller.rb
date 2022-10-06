class ContactsController < ApplicationController
  before_action :set_giftee, only: %i[ show ]

  def index
    @giftees = Giftee.all
  end

  def show
    @giftee = Giftee.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giftee
      @giftee = Giftee.find(params[:id])
    end
end
