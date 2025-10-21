class CoachSeasonTeam < ApplicationRecord
  belongs_to :coach
  belongs_to :team
  belongs_to :season
end
