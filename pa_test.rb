require_relative 'pa'
require 'test/unit'

TEST_RESULT = '1, 2, 3, 4, Nama, 6, Team, 8, 9, Nama, 11, 12, 13, Team, Nama, 16, 17, 18, 19, Nama, Team, 22, 23, 24, Nama, 26, 27, Team, 29, Nama, 31, 32, 33, 34, Nama Team, 36, 37, 38, 39, Nama, 41, Team, 43, 44, Nama, 46, 47, 48, Team, Nama, 51, 52, 53, 54, Nama, Team, 57, 58, 59, Nama, 61, 62, Team, 64, Nama, 66, 67, 68, 69, Nama Team, 71, 72, 73, 74, Nama, 76, Team, 78, 79, Nama, 81, 82, 83, Team, Nama, 86, 87, 88, 89, Nama, Team, 92, 93, 94, Nama, 96, 97, Team, 99, Nama'

class TestDivBy < Test::Unit::TestCase
  def test_div_by
    assert_false(div_by(33, 20))
    assert_true(div_by(30,5))
    assert_false(div_by(30, 0))
  end
end

class TestOnliners < Test::Unit::TestCase
  def test_full_if_onliner
    assert_equal(TEST_RESULT, full_if_onliner)
  end
  def test_ternary_onliner
    assert_equal(TEST_RESULT, ternary_onliner)
  end
end
