class Child < Foo

  def fred(params)
  	params.to_s
  end

  def barney
  	"barney"
  end

  reference :fred, :barney

end

