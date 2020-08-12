require_relative '../config/environment'
require 'rest-client'

# Get the body data form RESTClient RESTClient.get
response = RestClient.get("https://restcountries.eu/rest/v2/all")

# Format the data as JSON with JSON.parse
countries = JSON.parse(response)
countries.each do |country|
  name = country["name"]
  capital = country["capital"]
  Country.create(name: name, capital: capital, visits: 0, favorites: 0)
end

