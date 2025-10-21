require "application_system_test_case"

class CoachSeasonTeamsTest < ApplicationSystemTestCase
  setup do
    @coach_season_team = coach_season_teams(:one)
  end

  test "visiting the index" do
    visit coach_season_teams_url
    assert_selector "h1", text: "Coach season teams"
  end

  test "should create coach season team" do
    visit coach_season_teams_url
    click_on "New coach season team"

    fill_in "Coach", with: @coach_season_team.coach_id
    fill_in "Season", with: @coach_season_team.season_id
    fill_in "Team", with: @coach_season_team.team_id
    click_on "Create Coach season team"

    assert_text "Coach season team was successfully created"
    click_on "Back"
  end

  test "should update Coach season team" do
    visit coach_season_team_url(@coach_season_team)
    click_on "Edit this coach season team", match: :first

    fill_in "Coach", with: @coach_season_team.coach_id
    fill_in "Season", with: @coach_season_team.season_id
    fill_in "Team", with: @coach_season_team.team_id
    click_on "Update Coach season team"

    assert_text "Coach season team was successfully updated"
    click_on "Back"
  end

  test "should destroy Coach season team" do
    visit coach_season_team_url(@coach_season_team)
    click_on "Destroy this coach season team", match: :first

    assert_text "Coach season team was successfully destroyed"
  end
end
