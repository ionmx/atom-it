class ItemDatum < ApplicationRecord
  belongs_to :item 
  belongs_to :item_field
end
