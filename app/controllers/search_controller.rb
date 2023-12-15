class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub('+', ' ')
    @characters = SearchFacade.by_nation(params[:nation])
  end
end