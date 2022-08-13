# Sweater Weather

https://github.com/ckjolhede/sweater_weather


## Project Description
Sweater Weather is an api application intended to provide its users a look ahead at the weather conditions at their upcoming destinations. Either a quick trip to dinner or a lengthy road trip. This app is meant to help you be prepared. Frontend developers can access the provided endpoints to create weather forecast dashboards, registration and login forms for users, as well as display details for a users next road trip. Additionally, this app will allow users to see the current weather as well as the forecasted weather at the destination when given location parameters.

## Learning Goals 
- Expose an API that aggregates data from multiple external APIs
- Expose an API that requires an authentication token
- Expose an API for CRUD functionality
- Determine completion criteria based on the needs of other developers
- Research, select, and consume an API based on your needs as a developer

## Tools Used

| Development | Testing       | Gems            |
|   :----:    |    :----:     |    :----:       |
| Ruby 2.7.2  | RSpec         | Pry             |
| Rails 5.2.5 | WebMock       | ShouldaMatchers |
| PostgresSQL | VCR           | Rubocop         |
| Bcrypt      | SimpleCov     | Figaro          |
| VSCode      | FactoryBot    | Faraday         |
| Github      |               |                 |
| Travis      |               |                 |


## Getting Started

Fork and clone the repo at https://github.com/ckjolhede/sweater_weather

An api key is generated upon user registration


## Endpoints

The following table presents each API endpoint and its parameters.

Endpoint | Docs/Example | Query | JSON Payload
---------|--------------|-------|-------------
Get Forecast for a Destination | GET /api/v1/forecast | location | n/a
Get Images for a Destination | GET /api/v1/backgrounds | location | n/a
Register a New User | POST /api/v1/users | n/a | email, password, password_confirmation
Login a User | POST /api/v1/sessions | n/a | email, password
Create a Road Trip | POST /api/v1/road_trip | n/a | origin, destination, api_key

