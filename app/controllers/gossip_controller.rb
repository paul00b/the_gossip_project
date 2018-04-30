class GossipController < ApplicationController
  def new
  end
  def create
    @gossip = Gossip.new
    @gossip.anonymous_author = params[:name]
    @gossip.content = params[:content]
    @gossip.save
    redirect_to @gossip
  end

  def show
    @gossip = Gossip.find_by(id: params[:id])
  end
end