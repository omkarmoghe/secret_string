# frozen_string_literal: true

require "test_helper"

class SecretStringTest < Minitest::Test
  def setup
    @secret_string = SecretString::String.new("something sensitive")
  end

  def test_that_it_has_a_version_number
    refute_nil ::SecretString::VERSION
  end

  def test_that_it_does_not_inspect
    refute_equal "\"something sensitive\"", @secret_string.inspect
    assert_equal "[secret]", @secret_string.inspect
  end

  def test_that_it_interpolates
    # rubocop:disable Style/RedundantInterpolation
    assert_equal "something sensitive", "#{@secret_string}"
    # rubocop:enable Style/RedundantInterpolation
  end

  def test_that_it_equals
    assert_equal "something sensitive", @secret_string
  end
end
