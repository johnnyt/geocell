require 'helper'

class TestVersion < Minitest::Test
  def test_version
    assert Geocell::VERSION
  end
end
