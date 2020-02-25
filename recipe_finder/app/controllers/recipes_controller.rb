class RecipesController < ApplicationController
  def index
    @search_term = 'pizza'
    @recipes = Recipe.for(@search_term)
  end
end
