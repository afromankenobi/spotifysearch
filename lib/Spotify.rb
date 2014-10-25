class Spotify
	include HTTParty

	base_uri 'https://api.spotify.com/v1'

	def search(q, type="artist")
		return false if q.blank?
		result = self.class.get("/search?q=#{q}&type=#{type}")
		result = result.to_json
		result = JSON.parse result
	end
end