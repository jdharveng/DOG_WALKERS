class DogsController < ApplicationController
  before_action :fetch_dog, except: [:index, :new, :create, :mydogs]

  def index
    @dogs = policy_scope(Dog).order(created_at: :desc)
    #  @flats = Flat.where.not(latitude: nil, longitude: nil)
    @markers = @dogs.map do |dog|
      {
        lat: dog.user.latitude,
        lng: dog.user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
  end

  def mydogs
    @dogs = Dog.where(user: current_user)
    authorize @dogs
  end

  def new
    @dog = Dog.new()
    authorize @dog
  end

  def create
    @dog = Dog.new(dog_params)
    authorize @dog
    @dog.user = current_user

    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dog.update(dog_params)

    redirect_to dog_path
  end

  def destroy
    @dog.destroy
  end


  private

  def fetch_dog
    @dog = Dog.find(params[:id])
    authorize @dog
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :sex, :size, :bio, :age, :picture)
  end
end
