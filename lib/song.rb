class Song
	before_create :actualiza_author

	private
	def actualiza_author
	  self.author = title + author
	end
end