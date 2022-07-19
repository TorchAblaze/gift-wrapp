class GiftsController < ApplicationController
  def index
    @gifts = Gift.where(purchased: false)
  end

  def purchased
    @gifts = Gift.where(purchased: true)
  end

  def add
    
  end


  # Started POST "/gifts" for 127.0.0.1 at 2022-07-12 17:54:13 -0700
  # Processing by GiftsController#create as TURBO_STREAM
  #   Parameters: {"authenticity_token"=>"[FILTERED]", "name"=>"Test", "price"=>"1.99", "commit"=>"Add gift"}
  # No template found for GiftsController#create, rendering head :no_content
  # Completed 204 No Content in 1ms (ActiveRecord: 0.0ms | Allocations: 341)

  # https://guides.rubyonrails.org/action_controller_overview.html#parameters
  # { client: { name: "Client Name", ... } }
  # params[:client]
  # { name: "Client Name", ... }
  # Client.new({ name: "Client Name" })
  # Client.new(name: "Client Name")

  def create
    @gift = Gift.new(name: params[:name], price: params[:price])
    if @gift.save
      redirect_to gifts_path
    else
      flash[:error] = @gift.errors.first.full_message
      render "add", status: :unprocessable_entity
    end
  end
    
end
