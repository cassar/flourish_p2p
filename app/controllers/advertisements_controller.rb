class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end
end
