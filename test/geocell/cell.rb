require 'helper'

class TestCell < Minitest::Test
  def test_store_exists
    refute Geocell::Cell.store.nil?
  end
end
