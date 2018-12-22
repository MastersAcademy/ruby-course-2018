class PetsController < ApplicationController
  def new
    pet.idle
    respond_success
  end

  def feed
    pet.feed
    respond_success
  end

  def play
    pet.play
    respond_success
  end

  def rest
    pet.rest
    respond_success
  end

  private

  def respond_success
    respond_with(200, error: false, entity: pet.to_json)
  end

  def pet
    @@pet ||= Pet.new
  end
end