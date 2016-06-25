class CoffeemakersController < ApplicationController

  def index
  end

  def new
    @coffee_maker = Coffeemaker.new
  end

  def create
    @coffee_maker = Coffeemaker.new(coffee_maker_params)

    if @coffee_maker.save
      flash[:notice] = "You've made coffee!"
      redirect_to @coffee_maker
    else
      # nothing yet
    end
  end

  private

  def coffee_maker_params
    params.require(:coffeemaker).permit(:make, :model, :size, :capacity,
                                         :heat_source, :grind)
  end
end
