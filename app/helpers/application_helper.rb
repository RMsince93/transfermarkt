module ApplicationHelper
  def player_avatar_tag(player, size: [60, 60])
    if player.respond_to?(:avatar) && player.avatar.attached?
      image_tag player.avatar.variant(resize_to_limit: size), class: "img-thumbnail"
    elsif player.respond_to?(:avatar_url) && player.avatar_url.present?
      image_tag asset_path(player.avatar_url), class: "img-thumbnail" rescue player.avatar_url
    else
      content_tag :span, "N/A", class: "text-muted"
    end
  end

  def player_age(player, reference_date = Date.current)
    return unless player.respond_to?(:age)

    player.age(reference_date)
  end

  def country_flag_tag(country, size: [32, 20])
    return if country.nil?

    if country.respond_to?(:flag) && country.flag.attached?
      image_tag country.flag.variant(resize_to_limit: size), class: "country-flag me-2"
    elsif country.respond_to?(:flag_url) && country.flag_url.present?
      image_tag asset_path(country.flag_url), class: "country-flag me-2" rescue country.flag_url
    end
  end

  def format_market_value(value)
    return "—" unless value.to_f.positive?

    number_to_currency(value, unit: "€", precision: 0, format: "%n %u")
  end

  def player_team_for_season(player, season)
    associations = player.player_season_teams.includes(:team, :season)
    if season
      associations.find { |pst| pst.season_id == season.id }&.team
    else
      associations.max_by { |pst| pst.season&.start_year.to_i }&.team
    end
  end
end
