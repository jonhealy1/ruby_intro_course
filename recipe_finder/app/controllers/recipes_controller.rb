class RecipesController < ApplicationController
  # def index
  #   @search_term = 'chocolate'
  #   @recipes = Recipe.for(@search_term)
  # end
  def index
    @search_term =  params[:search] || 'vegan'
    @recipes = Recipe.for(@search_term)
    @recipes = @recipes.empty? ? 'No recipes found' : @recipes
  end
end
