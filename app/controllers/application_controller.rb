class ApplicationController < ActionController::API

 def self.status_code_messages
                    {403=>"Forbidden",
                    400=>"Bad Request",
                    406=>"Not Acceptable",
                    422=>"Unprocessable Entity",
                    200=>"OK",
                    201=>"Created"
                  }
                  end
                end