class Team < ApplicationRecord
  has_many :coach_season_teams
  has_many :coaches, through: :coach_season_teams

  has_many :player_season_teams, dependent: :destroy
  has_many :players, through: :player_season_teams

  has_many :seasons, through: :coach_season_teams
  has_one_attached :logo

  def average_age(season: nil, reference_date: Date.current)
    scope = players_for(season)
    return 0.0 if scope.blank?

    birth_dates = scope.where.not(birth_date: nil).pluck(:birth_date)
    return 0.0 if birth_dates.empty?

    ages = birth_dates.map { |dob| age_on(reference_date, dob) }
    (ages.sum / ages.size.to_f).round(2)
  end

  def market_value_total(season: nil)
    players_for(season).sum(:market_value)
  end

  def squad_size(season: nil)
    scope = players_for(season)
    count = scope.count
    return count if count.positive?

    self[:squad_size]
  end

  def players_in_season(season = nil)
    players_for(season)
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[name city stadium current_coach logo_url created_at updated_at]
  end

  private

  def age_on(reference_date, dob)
    years = reference_date.year - dob.year
    before_birthday = reference_date.month < dob.month ||
                      (reference_date.month == dob.month && reference_date.day < dob.day)
    years -= 1 if before_birthday
    years
  end

  def players_for(season)
    scope = players.merge(Player.ordered_by_position).distinct
    return scope unless season

    scope.merge(PlayerSeasonTeam.for_season(season))
  end
end
