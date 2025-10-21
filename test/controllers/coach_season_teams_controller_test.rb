require "test_helper"

class CoachSeasonTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coach_season_team = coach_season_teams(:one)
  end

  test "should get index" do
    get coach_season_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_coach_season_team_url
    assert_response :success
  end

  test "should create coach_season_team" do
    assert_difference("CoachSeasonTeam.count") do
      post coach_season_teams_url, params: { coach_season_team: { coach_id: @coach_season_team.coach_id, season_id: @coach_season_team.season_id, team_id: @coach_season_team.team_id } }
    end

    assert_redirected_to coach_season_team_url(CoachSeasonTeam.last)
  end

  test "should show coach_season_team" do
    get coach_season_team_url(@coach_season_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_coach_season_team_url(@coach_season_team)
    assert_response :success
  end

  test "should update coach_season_team" do
    patch coach_season_team_url(@coach_season_team), params: { coach_season_team: { coach_id: @coach_season_team.coach_id, season_id: @coach_season_team.season_id, team_id: @coach_season_team.team_id } }
    assert_redirected_to coach_season_team_url(@coach_season_team)
  end

  test "should destroy coach_season_team" do
    assert_difference("CoachSeasonTeam.count", -1) do
      delete coach_season_team_url(@coach_season_team)
    end

    assert_redirected_to coach_season_teams_url
  end
end
