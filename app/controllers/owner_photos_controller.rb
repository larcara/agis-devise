class OwnerPhotosController < ApplicationController
  before_action :set_owner_photo, only: [:show, :edit, :update, :destroy]

  # GET /owner_photos
  # GET /owner_photos.json
  def index
    @owner_photos = OwnerPhoto.all
  end

  # GET /owner_photos/1
  # GET /owner_photos/1.json
  def show
  end

  # GET /owner_photos/new
  def new
    @owner_photo = OwnerPhoto.new
  end

  # GET /owner_photos/1/edit
  def edit
  end

  # POST /owner_photos
  # POST /owner_photos.json
  def create
    @owner_photo = OwnerPhoto.new(owner_photo_params)

    respond_to do |format|
      if @owner_photo.save
        format.html { redirect_to @owner_photo, notice: 'Owner photo was successfully created.' }
        format.json { render :show, status: :created, location: @owner_photo }
      else
        format.html { render :new }
        format.json { render json: @owner_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_photos/1
  # PATCH/PUT /owner_photos/1.json
  def update
    respond_to do |format|
      if @owner_photo.update(owner_photo_params)
        format.html { redirect_to @owner_photo, notice: 'Owner photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_photo }
      else
        format.html { render :edit }
        format.json { render json: @owner_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_photos/1
  # DELETE /owner_photos/1.json
  def destroy
    @owner_photo.destroy
    respond_to do |format|
      format.html { redirect_to owner_photos_url, notice: 'Owner photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_photo
      @owner_photo = OwnerPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_photo_params
      params.require(:owner_photo).permit(:owner_id, :photo)
    end
end
