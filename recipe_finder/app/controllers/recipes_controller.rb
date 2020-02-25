class RecipesController < ApplicationController
  def index
    @search_term = 'vegan'
    @recipes = Recipe.for(@search_term)
  end
end
