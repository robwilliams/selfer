require 'test_helper'

class TheClass
  extend Selfer

  selfer :do_thing
  selfer :arity_test
  selfer :one, :two

  def initialize(arg1,arg2,arg3)
    @initarg1 = arg1
    @initarg2 = arg2
    @initarg3 = arg3
  end

  def do_thing
    [@initarg1, @initarg2, @initarg3]
  end

  def one
    :one
  end

  def two
    :two
  end

  def arity_test(methodarg4)
    [@initarg1, @initarg2, @initarg3, methodarg4]
  end
end

class SelferTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Selfer::VERSION
  end

  def test_it_delegates_to_the_instance
    assert_equal [:arg1,:arg2,:arg3],
                 TheClass.do_thing(:arg1, :arg2, :arg3)
  end

  def test_it_delegates_to_the_instance_with_arity
    assert_equal [:arg1,:arg2,:arg3, :arg4],
                 TheClass.arity_test(:arg1, :arg2, :arg3, :arg4)
  end

  def test_it_can_delegate_multiple_methods
    assert_equal :one, TheClass.one(1,2,3)
    assert_equal :two, TheClass.two(1,2,3)
  end
end
