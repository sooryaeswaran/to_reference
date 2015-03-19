module Baz
	include ToReference

	def baz
		"baz"
	end

	def pro
		"pro"
	end
	
	reference :pro

end