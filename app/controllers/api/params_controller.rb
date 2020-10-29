class Api::ParamsController < ApplicationController
  def name_action
    @name = params["your_name"]
    @output = "Your name is #{@name.upcase}"
    @name_split = @name.split(//)
    if @name_split[0] == "a"
      return "Hey, your name starts with the first letter of the alphabet!"
    end
    render "name.json.jb"
  end
end
