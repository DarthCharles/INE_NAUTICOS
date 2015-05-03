require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  test "test_create" do
    brand = Brand.create(:name => 'Nauticos', 
      :cif => '1012', 
      :logo_url => 'a')
    assert_equal 'Nauticos', brand.name
    assert_equal 1012, brand.cif
    assert_equal '', brand.logo_url
  end

    test "failing_create" do
    brand = Brand.new
    assert_equal false, brand.save
    assert_equal 2, brand.errors.count
    assert brand.errors[:name]
    assert brand.errors[:cif]
  end
  
end
