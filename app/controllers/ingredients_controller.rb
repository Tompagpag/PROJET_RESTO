class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]

  def new
    @ingredient = Ingredient.new
  end

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @ingredient.update
      redirect_to recipes_path
    else
      render :new
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to recipes_path
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params

    # Remove cost for recipe ?
    params.require(:ingredient).permit(:name,
                                       :amount_for_recipe,
                                       :cost_for_recipe,
                                       :amount_of_order,
                                       :cost_of_order,
                                       :unit_for_recipe,
                                       :unit_of_order)
  end
end
