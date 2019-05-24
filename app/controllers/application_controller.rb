class ApplicationController < ActionController::Base
  before_action :search  #protect_from_forgery with: :exceptionより後におく。
  def search
    @search = Product.ransack(params[:q])
    @products = @search.result
  end
end