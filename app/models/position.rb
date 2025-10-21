class Position < ApplicationRecord
  class << self
    def ransackable_attributes(_auth_object = nil)
      %w[name acronym created_at updated_at]
    end
  end
end
