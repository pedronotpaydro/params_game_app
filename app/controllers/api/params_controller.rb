class Api::ParamsController < ApplicationController
  def name_action
    @name = params["your name"]
    @output = "Your name is #{@name}"
    render "name.json.jb"
  end
end
