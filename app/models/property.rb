class Property < ActiveRecord::Base

	# Public - Class method for searching properties
	#
	# search - The string term to search the property titles for
	# 	
	# Returns an Array of search results
	def self.search(search)
		if search
			where('title LIKE ?', "%#{search}%")
		else
			scoped
		end
	end

end
