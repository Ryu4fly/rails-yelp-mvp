class Restaurant < ApplicationRecord
  has_many :reviews

  CATEGORY = %w[chinese japanese italian belgian].freeze
  validates :name, :address, :category, inclusion: { in: CATEGORY }
end
