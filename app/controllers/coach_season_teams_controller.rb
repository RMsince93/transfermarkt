class CoachSeasonTeamsController < ApplicationController
  before_action :set_coach_season_team, only: %i[ show edit update destroy ]

  # GET /coach_season_teams or /coach_season_teams.json
  def index
    @coach_season_teams = CoachSeasonTeam.all
  end

  # GET /coach_season_teams/1 or /coach_season_teams/1.json
  def show
  end

  # GET /coach_season_teams/new
  def new
    @coach_season_team = CoachSeasonTeam.new
  end

  # GET /coach_season_teams/1/edit
  def edit
  end

  # POST /coach_season_teams or /coach_season_teams.json
  def create
    @coach_season_team = CoachSeasonTeam.new(coach_season_team_params)

    respond_to do |format|
      if @coach_season_team.save
        format.html { redirect_to @coach_season_team, notice: "Coach season team was successfully created." }
        format.json { render :show, status: :created, location: @coach_season_team }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coach_season_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_season_teams/1 or /coach_season_teams/1.json
  def update
    respond_to do |format|
      if @coach_season_team.update(coach_season_team_params)
        format.html { redirect_to @coach_season_team, notice: "Coach season team was successfully updated." }
        format.json { render :show, status: :ok, location: @coach_season_team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coach_season_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_season_teams/1 or /coach_season_teams/1.json
  def destroy
    @coach_season_team.destroy!

    respond_to do |format|
      format.html { redirect_to coach_season_teams_path, status: :see_other, notice: "Coach season team was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_season_team
      @coach_season_team = CoachSeasonTeam.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def coach_season_team_params
      params.expect(coach_season_team: [ :coach_id, :team_id, :season_id ])
    end
end
