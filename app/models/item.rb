class Item < ApplicationRecord
  belongs_to :claim

  validates :status, presence: true
end
