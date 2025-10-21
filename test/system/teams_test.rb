require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "should create team" do
    visit teams_url
    click_on "New team"

    fill_in "Average age", with: @team.average_age
    fill_in "City", with: @team.city
    fill_in "Current coach", with: @team.current_coach
    fill_in "Logo", with: @team.logo
    fill_in "Market value total", with: @team.market_value_total
    fill_in "Name", with: @team.name
    fill_in "Squad size", with: @team.squad_size
    fill_in "Stadium", with: @team.stadium
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "should update Team" do
    visit team_url(@team)
    click_on "Edit this team", match: :first

    fill_in "Average age", with: @team.average_age
    fill_in "City", with: @team.city
    fill_in "Current coach", with: @team.current_coach
    fill_in "Logo", with: @team.logo
    fill_in "Market value total", with: @team.market_value_total
    fill_in "Name", with: @team.name
    fill_in "Squad size", with: @team.squad_size
    fill_in "Stadium", with: @team.stadium
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "should destroy Team" do
    visit team_url(@team)
    click_on "Destroy this team", match: :first

    assert_text "Team was successfully destroyed"
  end
end
