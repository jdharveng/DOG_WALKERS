class WalksController < ApplicationController
  before_action :fetch_dog, except: [:index]
  before_action :fetch_walk, only: [:show,:edit]
  def index
    # Probablment a modifier avec le search
    #@walks = @
    @walks = policy_scope(Walk).order(created_at: :desc)
  end

  def show
    # work done by the before_action
  end

  def new
    @walk = Walk.new
    authorize @walk
  end

  def create
    @walk = Walk.new(walk_params)
    authorize @walk
    @walk.user = current_user
    @walk.dog = @dog

    if @walk.save
      redirect_to dog_walk_path(params[:dog_id], @walk)
    else
      redirect_to @dog
    end
  end

  private

  def fetch_dog
    @dog = Dog.find(params[:dog_id])
  end

  def fetch_walk
    @walk = Walk.find(params[:id])
    authorize @walk
  end

  def walk_params
    params.require(:walk).permit(:dogwalker_id, :dog_id, :date_begin, :date_end, :startime, :duration)
  end

end
