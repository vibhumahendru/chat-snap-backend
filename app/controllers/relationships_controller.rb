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
    if @relationship.valid?
        render json: @relationship, status: :ok
      else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @relationship = Relationship.find(params[:id])

    @relationship.update(accepted: params[:accepted])

    render json: @relationship, status: :ok
  end

end
