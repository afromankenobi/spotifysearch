class Spotify
	include HTTParty

	base_uri 'https://api.spotify.com/v1'

	def search(search, type="artist")
	#def search(q, type)
		return false if search.blank?
		result = self.class.get("/search?q=#{search}&type=#{type}")
		result = result.to_json
		result = JSON.parse result
		
	end

	def searchalbum(search, type="album")
		return false if search.blank?
		result = self.class.get("/search?q=#{search}&type=#{type}")
		result = result.to_json
		result = JSON.parse result
		
	end

	def search_tracks(search, tyoe="track")
		return aflse if search.blank?
		result = self.class.get("/search?q=#{search}&type=#{type}")
		result = result.to_json
		result = JSON.parse result
	end	
end	