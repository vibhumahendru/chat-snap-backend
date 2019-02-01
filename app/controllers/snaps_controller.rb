class SnapsController < ApplicationController


  def index
    @snaps = Snap.all
    render json: @snaps, status: :ok
  end

  def create
    @snap = Snap.create(sender_id: params[:sender_id], reciever_id: params[:reciever_id], dataUri: params[:dataUri], viewed: false, timer: params[:timer])
    render json: @snap, status: :ok
  end

  def show
    @snap = Snap.find(params[:id])
    render json: @snap, status: :ok
  end

  def update
    @snap = Snap.find(params[:id])

    @snap.update(viewed: params[:viewed])

    render json: @snap, status: :ok
  end


end
