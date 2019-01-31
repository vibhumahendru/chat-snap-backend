class RelationshipsController < ApplicationController



  def index
    @relationships = Relationship.all
    render json: @relationships, status: :ok
  end

  def show
    @relationship = Relationship.find(params[:id])
    render json: @relationship, status: :ok
  end

  def create
    @relationship = Relationship.create(friender_id: params[:friender_id], friendee_id: params[:friendee_id], accepted: false)
    render json: @relationship, status: :ok
  end

  def update
    @relationship = Relationship.find(params[:id])

    @relationship.update(accepted: params[:accepted])

    render json: @relationship, status: :ok
  end

end
