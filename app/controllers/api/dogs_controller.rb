class Api::DogsController < ApplicationController
  def create
    if current_user
      @dog = Dog.new(
        name: params[:name],
        breed: params[:breed],
        age: params[:age]
      )
      @dog.save
      render "show.json.jb"
    else
      render json: ["You must logged in to view this!"]
    end
    
  end
end
