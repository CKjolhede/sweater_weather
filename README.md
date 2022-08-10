# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
nstructions
Create a branch off of your Sweater Weather project called final.
As you work, you should commit to this branch every 15 minutes.
DO NOT push your code to your GitHub repo until the end of the 3 hour assessment
Complete the assignment below. You should:
TDD all of your work
Prioritize getting your code functional before attempting any refactors
Write/refactor your code to achieve good code quality
Assignment
You will build an endpoint that will retrieve food and forecast information for a destination city.
Your endpoint should follow this format:
GET /api/v1/munchies?location=denver,co&food=chinese
Your API will return:
the destination city
the name and address of a restaurant serving THE SPECIFIED TYPE of cuisine
the current forecast of the destination city
Your response should be in the format below:
{
  "data": {
    "id": "null",
    "type": "munchie",
    "attributes": {
      "destination_city": "Pueblo, CO",
      "forecast": {
        "summary": "Cloudy with a chance of meatballs",
        "temperature": "83"
      },
      "restaurant": {
        "name": "Chinese Restaurant",
        "address": "4602 N. Elizabeth St, Ste 120, Pueblo, CO 81008"
      }
    }
  }
}
APIs
Yelp Fusion API
to find the name and address of a restaurant in your end location
Restaurants should serve the type of food specified in the request
Follow instructions to register for an API key (should be immediate). Note that the API key goes in the header.
https://www.yelp.com/developers/documentation/v3/business_search
Open Weather Map API (leverage Part 1 of your project)
to find the current forecast at the end location.
https://openweathermap.org/api
When you're finished you can fill out this form here.
yelp.comyelp.com
Authentication - Yelp Fusion
Yelp's API exposes search to 3rd party developers.
yelp.comyelp.com
Business Search Endpoint - Yelp Fusion
Yelp's API exposes search to 3rd party developers.
openweathermap.orgopenweathermap.org
Weather API - OpenWeatherMap
Simple and fast and free weather API from OpenWeatherMap you have access to current weather data, hourly, 5- and 16-day forecasts. Historical weather data for 40 years back for any coordinate. Weather maps, UV Index, air pollution and historical data>> Rack::Utils::HTTP_STATUS_CODES



{100=>"Continue",
 101=>"Switching Protocols",
 102=>"Processing",
 202=>"Accepted",
 203=>"Non-Authoritative Information",
 204=>"No Content",
 205=>"Reset Content",
 206=>"Partial Content",
 207=>"Multi-Status",
 208=>"Already Reported",
 226=>"IM Used",
 300=>"Multiple Choices",
 301=>"Moved Permanently",
 302=>"Found",
 303=>"See Other",
 304=>"Not Modified",
 305=>"Use Proxy",
 307=>"Temporary Redirect",
 308=>"Permanent Redirect",
 


  
 500=>"Internal Server Error",
 501=>"Not Implemented",
 502=>"Bad Gateway",
 503=>"Service Unavailable",
 504=>"Gateway Timeout",
 505=>"HTTP Version Not Supported",
 506=>"Variant Also Negotiates",
 507=>"Insufficient Storage",
 508=>"Loop Detected",
 510=>"Not Extended",
 511=>"Network Authentication Required"}

 curl --header "Content_Type: application/json" --request POST --data '{"key":"value", "key2":"value2"}' http://localhost:3000 -v



**REQUEST 

        Origin name
        Dest name, 
        APikey..........AUTHORIZATION\
                                      \               
                                      REQUEST TO MAPQ
                                  Lat/lng           travel time
                                    |                         |
                                    |                        /
                                OPENWEATHER         CALCULATIONS AND CONVERSIONS
                                          \         /
                                           \       /
                                         COMPILE DATA
                                          SERIALIZE
                                        SEND RESPONSE 

                                          ID: NULL
                                          TYPE ROADTRIP
                                          ATTRIBUTES:
                                              START_CITY
                                              END_CITY
                                              TRAVEL_TIME
                                             WEATHER_AT_ETA
                                                  TEMPERATURE                                       CONDITIONS                           |
