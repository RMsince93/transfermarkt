class Coach < ApplicationRecord
  belongs_to :country
  has_many :coach_season_teams
  has_many :teams, through: :coach_season_teams
  has_many :seasons, through: :coach_season_teams

  has_one_attached :avatar
end
