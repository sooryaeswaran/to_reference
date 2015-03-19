module Bar
	include ToReference

	def print_self
		self.class.name
	end

	def bar
		"bar"
	end
  	
 	reference :print_self
end

