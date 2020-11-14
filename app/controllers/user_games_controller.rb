class UserGamesController < ApplicationController
  def index
    @user_games = UserGame.all
    render json: @user_games
  end

  def create
    @user_game = UserGame.create(user_game_strong_params)
    render json: user_game.to_json(serialized_data)
  end

  private
    def serialized_data
      {:except => [:created_at, :updated_at]}
    end

    def user_game_strong_params
      params.require(:user_game).permit(:user_id, :game_id)
    end

end
