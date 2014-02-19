class Song < ActiveRecord::Base
	before_create :actualiza

	private
	def actualiza
	  self.author = "#{author} #{title}"
	  self.title = "#{title} pista larga" if duration > "3:00"
	end
end
