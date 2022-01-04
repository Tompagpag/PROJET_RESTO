class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def index
    @recipes = Recipe.all
  end

end
