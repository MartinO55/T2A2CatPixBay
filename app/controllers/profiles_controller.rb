class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message
  end


  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
   
  end

  # GET /profiles/1 or /profiles/1.json
  def show
   
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    authorize @profile
  end


  def mypictures
    @profile = current_user.id
    @pictures = Picture.find(params) #This is where we define the filter?
  end

  # POST /profiles or /profiles.json
  def create
 
    @profile = Profile.new(permitted_params)
    if @profile.nil?
      respond_to do |format|
        if @profile.save
          format.html { redirect_to @profile, notice: "Profile was successfully created." }
          format.json { render :show, status: :created, location: @profile }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @profile.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
      format.html { redirect_to profiles_url, notice:"You cannot have two profiles"}
      end
    end

  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
  

    respond_to do |format|
      if @profile.update(permitted_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    authorize @profile
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permitted_params
      params.required(:profile).permit(:user_id, :username, :wallet)
    end


end
