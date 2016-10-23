
class GameController < ApplicationController #inherits

  # could also put ruby in here (pure ruby w/o <% %>)
  # but then, in html.erb file, will be calling computer_move, but that    doesn't exist in the file
  # When you put @ in front of it, it can be accessed in different places
  # So in view template, can put @
  # Helpful to put most logic in pure ruby file and put mostly what's put onto the page on the view template (play_rock.html.erb)

  def user_plays_rock

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    @img = "fa fa-hand-" + @computer_move + "-o"

    if @computer_move == "scissors"
      @cx = 130
    elsif @computer_move == "rock"
      @cx = 117
    else
      @cx = 110
    end

    render("game/play_rock.html.erb")
  end


  def user_plays_paper

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    @img = "fa fa-hand-" + @computer_move + "-o"

    if @computer_move == "scissors"
      @cx = 130
    elsif @computer_move == "rock"
      @cx = 117
    else
      @cx = 110
    end


    render("game/play_paper.html.erb")
  end


  def user_plays_scissors

    moves = ["rock", "paper", "scissors"]

    @computer_move = moves.sample

    @img = "fa fa-hand-" + @computer_move + "-o"

    if @computer_move == "scissors"
      @cx = 130
    elsif @computer_move == "rock"
      @cx = 117
    else
      @cx = 110
    end


    render("game/play_scissors.html.erb")
  end


end


#route, controller, action, view
