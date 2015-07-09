class HomeController < ApplicationController
  def index
    random_number = rand(1..Photo.all.length)
    @photo = Photo.all[random_number]
  end
end
