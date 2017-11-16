json.extract! item_datum, :id, :item_field, :value, :created_at, :updated_at
json.url item_datum_url(item_datum, format: :json)
