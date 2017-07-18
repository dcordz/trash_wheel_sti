class TrashWheelsController < ApplicationController
  before_action :set_trash_wheel, only: [:show, :edit, :update, :destroy]

  # GET /trash_wheels
  # GET /trash_wheels.json
  def index
    @trash_wheels = TrashWheel.all
  end

  # GET /trash_wheels/1
  # GET /trash_wheels/1.json
  def show
  end

  # GET /trash_wheels/new
  def new
    @trash_wheel = TrashWheel.new
  end

  # GET /trash_wheels/1/edit
  def edit
  end

  # POST /trash_wheels
  # POST /trash_wheels.json
  def create
    @trash_wheel = TrashWheel.new(trash_wheel_params)

    respond_to do |format|
      if @trash_wheel.save
        format.html { redirect_to @trash_wheel, notice: 'Trash wheel was successfully created.' }
        format.json { render :show, status: :created, location: @trash_wheel }
      else
        format.html { render :new }
        format.json { render json: @trash_wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trash_wheels/1
  # PATCH/PUT /trash_wheels/1.json
  def update
    respond_to do |format|
      if @trash_wheel.update(trash_wheel_params)
        format.html { redirect_to @trash_wheel, notice: 'Trash wheel was successfully updated.' }
        format.json { render :show, status: :ok, location: @trash_wheel }
      else
        format.html { render :edit }
        format.json { render json: @trash_wheel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trash_wheels/1
  # DELETE /trash_wheels/1.json
  def destroy
    @trash_wheel.destroy
    respond_to do |format|
      format.html { redirect_to trash_wheels_url, notice: 'Trash wheel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trash_wheel
      @trash_wheel = TrashWheel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trash_wheel_params
      params.require(:trash_wheel).permit(:title, :eyes, :trashy)
    end
end
