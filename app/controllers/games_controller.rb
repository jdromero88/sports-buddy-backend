class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games
  end

  def create
    @game = Game.create(game_strong_params)
    render json: @game
  end

  def show
    @game = Game.find params[:id]
    if @game
      render json: @game
    else
      render json: {
        error:true,
        message:'No Games to show.'
      }
    end
  end

  def update
    @game = Game.find params[:id]
    if @game
      @game.update!(game_strong_params)
      render json: @game
    else
      render json:{
        error: true,
        message: 'Something went wrong.'
      }
    end
  end

  def destroy
    @game = Game.find params[:id]
    if @game
      @game.destroy
      render json:{
        error:false,
        message: 'Game deleted'
      }
    else
      render json:{
        error:true,
        message: 'Something went wrong.'
      }
    end
  end

  private
    def game_strong_params
      params.require(:games).permit(
        :location,
        :time,
        :result,
        :sport
      )
    end
end
