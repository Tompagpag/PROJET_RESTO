class RecipesController < ApplicationController


  def new
    @recipe = Recipe.new
  end

  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipes).permit(:name)
  end
end
