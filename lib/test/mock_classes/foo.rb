require 'to_reference'

class Foo
	include ToReference
  
  def params(params)
  	params
  end

  def hi
  	"hi"
  end

	def self.sum(number_1, number_2)
		number_1 + number_2
	end  

	reference :params, :hi, :sum

end

