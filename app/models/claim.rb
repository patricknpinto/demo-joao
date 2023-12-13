class Claim < ApplicationRecord
  belongs_to :account
  has_many :items

  accepts_nested_attributes_for :account
  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: proc { |attributes| attributes['description'].blank? }

  def data_attributes=(new_data)
    self.data = new_data
  end

  def the_description_is=(new_description)
    self.description = new_description
  end
end
