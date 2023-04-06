class Admins::FoodsController < Admins::ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.default_order
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to admins_food_url(@food)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to admins_food_url(@food)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @food.destroy!
    redirect_to admins_foods_url
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :price_without_tax, :published, :image)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
