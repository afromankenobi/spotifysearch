class PublicController < ApplicationController
  def index
  end

  def search
  	@query = params[:search]
  end
end
