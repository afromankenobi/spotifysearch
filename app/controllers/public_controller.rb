class PublicController < ApplicationController
	require 'Spotify'
  def index
  end

  def search
  	#query = params[:search]
  	search = params[:search]
  	search_type = params[:type]
  	spotify = Spotify.new
  	@result = spotify.search(search, search_type)
	end

	def searchalbum
  	
  	search = params[:search]
  	search_type = params[:type]
  	spotify = Spotify.new
  	@result = spotify.searchalbum(search, search_type)
	end

	def search_tracks

		search = params[:search]
		search_type = params[:search]
		spotify = spotify.new
		@result = spotify.search_all(search, search_type)
	end
end
