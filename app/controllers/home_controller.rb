class HomeController < ApplicationController

  BASE_URL = "https://www.parsehub.com/api/v2/projects/";
  PROJECT_TOKEN = "tGoyoR5kUNfi";
  METHOD = "/last_ready_run/data"
  OTHER_PARAMS = "?api_key=txfZAixJaR9f&format=json"
  
  def index
    final_url = HomeController::BASE_URL
    final_url.concat(HomeController::PROJECT_TOKEN)
    final_url.concat(HomeController::METHOD)
    final_url.concat(HomeController::OTHER_PARAMS)
    response = HTTParty.get(final_url);
    parsed_response = JSON.parse(response.body);
    @items = parsed_response["Items"];
 
    rescue => e
  end
end
