class GossipController < ApplicationController
  def show
    puts @gossip = Gossip.find(params[:id])
  end
end
