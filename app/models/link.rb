class Link < ApplicationRecord
  belongs_to :item, optional: true
end
