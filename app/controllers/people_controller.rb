class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(name: params[:name])
    if @person.save
      redirect_to people_path
    else
      flash[:error] = @person.errors.first.full_message
      render "create", status: :unprocessable_entity
    end
  end

  def put

  end

  def delete

  end
  
end