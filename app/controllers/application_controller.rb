class ApplicationController < ActionController::Base
  before_action :search  #protect_from_forgery with: :exceptionより後におく。
  def search
    @search = Product.ransack(params[:q])
    @search_products = @search.result.page(params[:page])
  end
end