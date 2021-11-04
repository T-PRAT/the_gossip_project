class GossipController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
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
    Gossip.create(post_params)
    redirect_to gossip_index_path
  end

  def new
    @gossip = Gossip.new
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_index_path
  end

  private

  def post_params
    post_params = params.require(:gossip).permit(:title, :content)
  end
end
