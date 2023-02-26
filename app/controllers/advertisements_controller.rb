class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all.preload(:claims)
  end
end
