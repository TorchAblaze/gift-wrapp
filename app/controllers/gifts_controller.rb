class GiftsController < ApplicationController
  before_action :set_people, only: %i[ new create edit update ]
  before_action :set_gift, only: %i[ edit update show ]
  
  def index
    @gifts = Gift.where(purchased: false)
  end

  def purchased
    @gifts = Gift.where(purchased: true)
  end

  def new
    @gift = Gift.new()
  end

  # some_array << new_item

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
    @gift = Gift.new(gift_params)
    if @gift.save
      redirect_to gifts_path
    else
      render "add", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @gift.update(gift_params)
      redirect_to gifts_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def show
  end

  def gift_params
    params[:gift].permit(:name, :price, :url, :person_id)
  end

  def set_people
    @people = Person.all.map { |p| [p.name, p.id] }
  end

  def set_gift
    @gift = Gift.find(params.permit(:id)[:id])
  end
    
end
