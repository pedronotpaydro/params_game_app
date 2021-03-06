Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/name_path" => "params#name_action"
    get "/numbers/:guess" => "params#number_guess_action"

    post "/display_body_path" => "params#display_body_action"
  end
end
