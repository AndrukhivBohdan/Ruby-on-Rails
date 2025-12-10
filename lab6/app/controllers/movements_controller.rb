class MovementsController < ApplicationController
  before_action :set_movement, only: %i[ show edit update destroy ]

  # GET /movements
  def index
    if params[:product_id]
      @movements = Movement.where(product_id: params[:product_id])
    else
      @movements = Movement.all
    end
  end

  def show; end
  def new
    @movement = Movement.new
  end

  def edit; end

  def create
    @movement = Movement.new(movement_params)
    if @movement.save
      redirect_to @movement, notice: "Movement was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @movement.update(movement_params)
      redirect_to @movement, notice: "Movement was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @movement.destroy
    redirect_to movements_path, notice: "Movement was successfully destroyed."
  end

  private

  def set_movement
    @movement = Movement.find(params[:id])
  end

  def movement_params
    params.require(:movement).permit(:product_id, :movement_type, :quantity)
  end
end
