require 'test_helper'

class ItemDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_datum = item_data(:one)
  end

  test "should get index" do
    get item_data_url
    assert_response :success
  end

  test "should get new" do
    get new_item_datum_url
    assert_response :success
  end

  test "should create item_datum" do
    assert_difference('ItemDatum.count') do
      post item_data_url, params: { item_datum: { item_field: @item_datum.item_field, value: @item_datum.value } }
    end

    assert_redirected_to item_datum_url(ItemDatum.last)
  end

  test "should show item_datum" do
    get item_datum_url(@item_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_datum_url(@item_datum)
    assert_response :success
  end

  test "should update item_datum" do
    patch item_datum_url(@item_datum), params: { item_datum: { item_field: @item_datum.item_field, value: @item_datum.value } }
    assert_redirected_to item_datum_url(@item_datum)
  end

  test "should destroy item_datum" do
    assert_difference('ItemDatum.count', -1) do
      delete item_datum_url(@item_datum)
    end

    assert_redirected_to item_data_url
  end
end
