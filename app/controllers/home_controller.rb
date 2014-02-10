class HomeController < ApplicationController
  def index
    @droplets = Digitalocean::Droplet.all.droplets
  end

  def power_cycle
    Digitalocean::Droplet.power_cycle(params[:home_id])
    redirect_to home_index_path
  end

  def power_off
    Digitalocean::Droplet.power_off(params[:home_id])
    redirect_to home_index_path
  end

  def power_on
    Digitalocean::Droplet.power_on(params[:home_id])
    redirect_to home_index_path
  end
end