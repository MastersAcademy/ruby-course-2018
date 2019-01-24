class TamagotchiController < ApplicationController
  def create
    Tamagotchi.create
    render 'shared/success'
  end

  def stats
    @tamagotchi = Tamagotchi.restore
    @tamagotchi.decrease_random_attr
    @tamagotchi = @tamagotchi.capture_attrs
  end

  def action
    tamagotchi = Tamagotchi.restore
    tamagotchi.send params[:event]
    render 'shared/success'
  end
end
