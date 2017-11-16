class Item < ApplicationRecord
  audited
  belongs_to :item_type
end
