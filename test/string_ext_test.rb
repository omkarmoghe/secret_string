# frozen_string_literal: true

require "test_helper"

class StringExtTest < Minitest::Test
  def setup
    @test_string = "something sensitive"
  end

  def test_secret
    assert_instance_of String, @test_string
    assert_instance_of SecretString::String, @test_string.secret
  end
end
