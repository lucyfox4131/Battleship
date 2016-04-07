require "minitest/autorun"
require "minitest/pride"
require "./lib/menu"

class MenuTest < Minitest::Test

  def setup
    @new_menu = Menu.new
  end

  def test_if_new_instance_of_menu
    assert_equal Menu, @new_menu.class
  end

end
