class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :links, dependent: :destroy
  accepts_nested_attributes_for :links, allow_destroy: true, reject_if: proc { |attribute| attribute['name'].blank? }
end
