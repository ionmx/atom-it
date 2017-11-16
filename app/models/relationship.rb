class Relationship < ApplicationRecord
  has_one :parent, through: :item
  has_one :child,  through:  :item
end
