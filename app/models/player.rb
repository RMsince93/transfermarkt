class Player < ApplicationRecord
  belongs_to :country
  belongs_to :position

  has_many :player_season_teams, dependent: :destroy
  has_many :teams, through: :player_season_teams

  has_one_attached :avatar

  POSITION_ORDER = [
    "Goalkeeper",
    "Center Back",
    "Right Back",
    "Left Back",
    "Defensive Midfielder",
    "Central Midfielder",
    "Right Midfielder",
    "Left Midfielder",
    "Attacking Midfielder",
    "Right Winger",
    "Left Winger",
    "Second Striker",
    "Center Forward",
    "Striker"
  ].freeze

  scope :ordered_by_position, lambda {
    joins(:position)
      .order(Arel.sql(position_order_sql), :name)
  }

  def age(reference_date = Date.current)
    return nil unless birth_date

    years = reference_date.year - birth_date.year
    before_birthday = reference_date.month < birth_date.month ||
                      (reference_date.month == birth_date.month && reference_date.day < birth_date.day)
    years -= 1 if before_birthday
    years
  end

  class << self
    def position_order_sql
      @position_order_sql ||= begin
        quoted_cases = POSITION_ORDER.each_with_index.map do |name, index|
          "WHEN #{connection.quote(name)} THEN #{index}"
        end.join(" ")

        "CASE positions.name #{quoted_cases} ELSE #{POSITION_ORDER.length} END"
      end
    end

    def ransackable_attributes(_auth_object = nil)
      %w[name age market_value preferred_foot birth_date height weight created_at updated_at]
    end

    def ransackable_associations(_auth_object = nil)
      %w[country position player_season_teams teams]
    end
  end

  ransacker :age do
    Arel.sql("CAST((strftime('%Y', 'now') - strftime('%Y', birth_date)) - (strftime('%m-%d', 'now') < strftime('%m-%d', birth_date)) AS INTEGER)")
  end
end
