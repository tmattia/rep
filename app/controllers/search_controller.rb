class SearchController < ApplicationController

  before_filter :validate_terms

  def all
    case @terms[0]
    when 'p', 'pedido'
      order = Order.find(@terms[1])
      redirect_to order
    else
      not_found
    end
  end

  private
  def validate_terms
    not_found if params[:q].nil?
    @terms = params[:q].split.map(&:downcase)
  end

end
