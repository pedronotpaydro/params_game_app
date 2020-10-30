class Api::ParamsController < ApplicationController
  def name_action
    input_value = params["your_name"].upcase
    @output_value = "Your name is #{input_value}"

    render "name.json.jb"
  end

  def number_guess_action
    winning_number = 33
    input_value = params["guess"].to_i
    @question = "Guess the number"
    if input_value < winning_number
      @output_value = "Too low"
    elsif input_value > winning_number
      @output_value = "Too high"
    else
      @output_value = "You got it! "
    end
    render "guess.json.jb"
  end

  def display_body_action
    input_value = params["username"]
    output_value = "test #{input_value}"
    render "body.json.jb"
  end
end
