class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]
  def index
    if params[:query].present?
      @query = params[:query]
      @cocktails = Cocktail.where("name ilike ?", "%#{@query}%")
    else
      @cocktails = Cocktail.all.order("created_at desc")
    end
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
