class MainPagesController < ApplicationController
  def index
  end

  def show
      @bikes = Bike.sort
  end
  
  def add
  end
  
  def create
      @bikel = Bike.new(bike_params)
      if @bikel.save
          flash[:notice] = "Bike creted"
          redirect_to(:action => 'show')
          else
          render('add')
      end
  end
  
  def bike_params
      params.require(:bike).permit(:name, :available, :description, :price)
  end

end
