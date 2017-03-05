class Company < ApplicationRecord
  belongs_to :category
  has_one :address, dependent: :destroy
  has_one :financial_information, dependent: :destroy

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :financial_information
  validates_presence_of :name

end
