class OtherChild < Foo
	include Bar
	extend Baz

	def fred(params)
		puts params
	end

	def barney
		puts "barney"
	end

	def self.sum(number_1, number_2)
		number_1 + number_2
	end  
	
	reference :bar, :baz
end

