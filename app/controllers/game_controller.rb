
class GameController < ApplicationController #inherits

  # could also put ruby in here (pure ruby w/o <% %>)
  # but then, in html.erb file, will be calling computer_move, but that    doesn't exist in the file
  # When you put @ in front of it, it can be accessed in different places
  # So in view template, can put @
  # Helpful to put most logic in pure ruby file and put mostly what's put onto the page on the view template (play_rock.html.erb)

  def dynamic

    moves = ["rock", "paper", "scissors"]

    @user_move = params["move"]

    @computer_move = moves.sample

    @img = "fa fa-hand-" + @computer_move + "-o"

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

    if @user_move == @computer_move
      @outcome = "tied"
    elsif (@user_move == 'paper' && @computer_move == 'rock') || (@user_move == 'rock' && @computer_move == 'scissors') || (@user_move == 'scissors' &&     @computer_move == 'paper')
      @outcome = "win"
    else
      @outcome = "lose"
    end

    render("game/play_anything.html.erb")
  end
end


#route, controller, action, view
