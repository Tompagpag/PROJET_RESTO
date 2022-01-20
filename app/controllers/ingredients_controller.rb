class IngredientsController < ApplicationController

  def new
    @ingredient = Ingredient.new
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
    @ingredient = Ingredient.find(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name,
                                       :amount_for_recipe,
                                       :cost_for_recipe,
                                       :amount_of_order,
                                       :cost_of_order,
                                       :unit_for_recipe,
                                       :unit_of_order)
  end
end
