require 'test_helper'

class ItemRelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_relationship = item_relationships(:one)
  end

  test "should get index" do
    get item_relationships_url
    assert_response :success
  end

  test "should get new" do
    get new_item_relationship_url
    assert_response :success
  end

  test "should create item_relationship" do
    assert_difference('ItemRelationship.count') do
      post item_relationships_url, params: { item_relationship: { child_id: @item_relationship.child_id, parent_id: @item_relationship.parent_id, relationship_id: @item_relationship.relationship_id } }
    end

    assert_redirected_to item_relationship_url(ItemRelationship.last)
  end

  test "should show item_relationship" do
    get item_relationship_url(@item_relationship)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_relationship_url(@item_relationship)
    assert_response :success
  end

  test "should update item_relationship" do
    patch item_relationship_url(@item_relationship), params: { item_relationship: { child_id: @item_relationship.child_id, parent_id: @item_relationship.parent_id, relationship_id: @item_relationship.relationship_id } }
    assert_redirected_to item_relationship_url(@item_relationship)
  end

  test "should destroy item_relationship" do
    assert_difference('ItemRelationship.count', -1) do
      delete item_relationship_url(@item_relationship)
    end

    assert_redirected_to item_relationships_url
  end
end
