require 'test/unit'
require 'test_helper'

class ToReferenceTest < Test::Unit::TestCase
  def test_instance_method
    ref = Foo.new.params
    assert_equal 1, ref.call(1)

    ref = Foo.new.hi
    assert_equal "hi", ref.call
  end

  def test_class_method
    ref = Foo.sum
    assert_equal 3, ref.call(1, 2)
  end

  def test_included_instance_method
    assert_equal "bar", OtherChild.new.bar.call
    assert_equal "OtherChild", OtherChild.new.print_self.call
  end

  def test_extended_class_method
    assert_equal "baz", OtherChild.baz.call
    assert_equal "pro", OtherChild.pro.call
  end

  def test_inherited_method
    ref = Child.new.params
    assert_equal 1, ref.call(1)

    ref = Child.new.hi
    assert_equal "hi", ref.call

    ref = Child.sum
    assert_equal 3, ref.call(1, 2)
  end

  def test_overriden_method
    assert_equal 3, OtherChild.sum(1, 2)
  end
end