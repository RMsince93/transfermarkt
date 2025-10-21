class PlayersController < ApplicationController
  before_action :set_player, only: %i[ show edit update destroy ]

  # GET /players or /players.json
  def index
    @season = Season.find_by(id: params[:season_id])
    @q = Player.ransack(params[:q])
    @players = @q.result(distinct: true)
                 .includes(:country, :position, player_season_teams: :team)
                 .ordered_by_position

    if @season
      @players = @players.joins(:player_season_teams)
                         .where(player_season_teams: { season_id: @season.id })
                         .distinct
    end
  end

  # GET /players/1 or /players/1.json
  def show
    @season = Season.find_by(id: params[:season_id])
    @season_options = Season.order(start_year: :desc)
    @player_history = @player.player_season_teams.includes(:team, :season).to_a.sort_by do |pst|
      -(pst.season&.start_year || 0)
    end

    @season ||= @player_history.first&.season
    @player_season_team = @season ? @player_history.find { |pst| pst.season_id == @season.id } : @player_history.first
    @player_team = @player_season_team&.team
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players or /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: "Player was successfully created." }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1 or /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: "Player was successfully updated." }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1 or /players/1.json
  def destroy
    @player.destroy!

    respond_to do |format|
      format.html { redirect_to players_path, status: :see_other, notice: "Player was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_params
      params.require(:player).permit(:name, :country_id, :birth_date, :height, :weight, :position_id, :market_value, :preferred_foot, :avatar)
    end
end
