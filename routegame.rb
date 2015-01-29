require 'bundler'
Bundler.require

require "sinatra"

options = ["Face 1", "Face 2", "Face 3", "Face 4", "Face 5", "Face 6", "Face 7", "Face 8", "Face 9", "Face 10", "Face 11", "Face 12"]

get "/roll" do
options[rand(12)]
end

get "/roll/:n" do
results = []
params[:n].to_i.times do
  results << options[rand(12)]
end
results.join(", ")
end