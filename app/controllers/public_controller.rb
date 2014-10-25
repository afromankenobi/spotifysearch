class PublicController < ApplicationController
	require 'Spotify'
  def index
  end

  def search
  	query = params[:search]
  	spotify = Spotify.new
  	@result = spotify.search(query)
  end
end
