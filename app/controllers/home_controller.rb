class HomeController < ApplicationController
  def index
    random_number = rand(1..Photo.all.length)
    @photo = Photo.find(random_number)
    #random photos
  end
end
