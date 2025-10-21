class Country < ApplicationRecord
  belongs_to :continent
  has_many :coaches

  has_one_attached :flag

  class << self
    def ransackable_attributes(_auth_object = nil)
      %w[name continent_id created_at updated_at]
    end

    def ransackable_associations(_auth_object = nil)
      %w[continent coaches]
    end
  end
end
