require 'test_helper'

class TheClass
  extend Selfer

  selfer :do_thing

  def initialize(arg1,arg2,arg3)
    @arg1 = arg1
    @arg2 = arg2
    @arg3 = arg3
  end

  def do_thing
    [@arg1, @arg2, @arg3]
  end
end

class SelferTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Selfer::VERSION
  end

  def test_it_delegates_to_the_instance
    assert_equal TheClass.do_thing(:arg1, :arg2, :arg3), [:arg1,:arg2,:arg3]
  end
end
