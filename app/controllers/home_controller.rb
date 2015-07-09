class HomeController < ApplicationController
  def index
    random_number = rand(0..Photo.all.length - 1)
    @photo = Photo.all[random_number]
  end
end
