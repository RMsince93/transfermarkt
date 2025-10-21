class PlayerSeasonTeam < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :season

  scope :for_season, ->(season) do
    season_id = season.is_a?(Season) ? season.id : season
    where(season_id:)
  end
end
