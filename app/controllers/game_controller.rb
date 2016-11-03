
class GameController < ApplicationController #inherits

  def index
    Score.delete_all
    @score = Score.new
    @score.comp = 0
    @score.user = 0
    @score.save

  end

  def dynamic
    @score = Score.last

    moves = ["rock", "paper", "scissors"]
    @user_move = params["move"]
    @computer_move = moves.sample

    @img = "fa fa-hand-" + @computer_move + "-o"

    # shadow justification
    if @user_move == "rock"
      @cx_static = 117
    elsif @user_move == "paper"
      @cx_static = 110
    else
      @cx_static = 130
    end

    if @computer_move == "scissors"
      @cx = 130
      @outcome = "won"
    elsif @computer_move == "rock"
      @cx = 117
      @outcome = "tied"
    else
      @cx = 110
      @outcome = "lost"
    end


    # score outcome
    if @user_move == @computer_move
      @outcome = "tied"

    elsif (@user_move == 'paper' && @computer_move == 'rock') || (@user_move == 'rock' && @computer_move == 'scissors') || (@user_move == 'scissors' &&     @computer_move == 'paper')
      @outcome = "win"
      @score.user+=1
      @score.save

    else
      @outcome = "lose"
      @score.comp+=1
      @score.save
    end

    render("play_anything")
  end
end


#route, controller, action, view
