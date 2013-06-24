require File.expand_path('../helper', __FILE__)

class TestUtils < Faraday::TestCase

  def test_escaping_safe_buffer
    str = FakeSafeBuffer.new('$32,000.00')
    assert_equal '%2432%2C000.00', Faraday::Utils.escape(str)
  end

end

