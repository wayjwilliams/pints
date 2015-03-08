class PintsController < ApplicationController

  before_action :set_pint, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pints = Pint.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pint = current_user.pints.build
  end

  def edit
  end

  def create
    @pint = current_user.pints.build(pint_params)
    if @pint.save
      redirect_to @pint, notice: "Pint was successfully created!"
    else
      render action: 'new'
    end
  end

  def update
    if @pint.update(pint_params)
      redirect_to @pint, notice: "Pint was successfully updated."
    else
      render action: 'edit'
    end
  end

  def destroy
    @pint.destroy
    redirect_to pints_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pint
    @pint = Pint.find(params[:id])
  end

  def correct_user
    @pint = current_user.pints.find_by(id: params[:id])
    redirect_to pints_path, notice: "Not authorized to edit this pint" if @pint.nil?
  end

  def pint_params
    params.require(:pint).permit(:image, :note)
  end
end
