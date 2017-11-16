json.extract! item_relationship, :id, :relationship_id, :parent_id, :child_id, :created_at, :updated_at
json.url item_relationship_url(item_relationship, format: :json)
