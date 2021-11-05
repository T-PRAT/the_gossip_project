class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
  end

  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(post_params)
    redirect_to gossip_path
  end

  def create
    @gossip = Gossip.new(post_params)
    @gossip.user = current_user
    @gossip.save
    redirect_to gossip_index_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_index_path
  end

  private

  def post_params
    post_params = params.permit(:title, :content)
  end
end
