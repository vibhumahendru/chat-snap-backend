class SnapsController < ApplicationController


  def index
    @snaps = Snap.all
    render json: @snaps, status: :ok
  end

  def create
    @snap = Snap.create(sender_id: params[:sender_id], reciever_id: params[:reciever_id], dataUri: params[:dataUri], viewed: false, timer: params[:timer])
    render json: @snap, status: :ok
  end


end
