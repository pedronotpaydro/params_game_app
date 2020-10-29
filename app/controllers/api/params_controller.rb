class Api::ParamsController < ApplicationController
  def name_action
    @name = params["your name"]
    render "name.json.jb"
  end
end
