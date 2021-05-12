gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test

  # should var asia be a class wide object? Fowler tries to lift content of 

  def setup
    @asia = Province.new(sample_province_data)
  end

  def test_province_shortfall
    assert_equal(5, @asia.shortfall)
  end

  # def test_province_shortfall
  #   asia = Province.new(sample_province_data)
  #   assert_equal(5, asia.shortfall)
  # end

  # def test_province_profit
  #   asia = new Province.new(sample_province_data)
  #   assert_equal(230, asia.profit)
  # end
end
