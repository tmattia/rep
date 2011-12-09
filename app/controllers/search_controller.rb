class SearchController < ApplicationController

  before_filter :validate_terms

  def all
    case @terms[0]
    when 'p', 'pedido'
      redirect_to Order.find(@terms[1])
    when 'c', 'cliente'
      redirect_to Client.find(@terms[1])
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
