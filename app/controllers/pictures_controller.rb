class PicturesController < ApplicationController
  before_action :set_picture, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]


  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message
  end

  # GET /pictures or /pictures.json
  def index
    @pictures = Picture.all
  end

  # GET /pictures/1 or /pictures/1.json
  def show
    
  end
  
  def confirm

  end

  def buy
  #So this is utterly gross and insecure, BUT IT WORKS
    @profile = current_user.id
    @buyerWallet = current_user.profile.wallet
    
    @picture = Picture.find(params[:id])
    @seller = @picture.profile

    @sellerWallet = @picture.profile.wallet
    @price = @picture.price
    
  
      if @buyerWallet =0 || @buyerWallet - @cost <0
        redirect_to pictures_url, notice: "You don't have enough in your wallet to buy this picture" 
        return
      else
        @cost = @buyerWallet - @price
      end

      if @buyerWallet =0 || @cost < 0
        redirect_to pictures_url, notice: "You don't have enough in your wallet to buy this picture" 
        return
      end
    @profit = @sellerWallet + @price

    current_user.profile.update(wallet: @cost)
    @seller.update(wallet: @profit)

    @picture.update(profile_id: @profile)

  end
  
  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
    authorize @picture
  end

  # POST /pictures or /pictures.json
  def create
    @picture = Picture.new(picture_params)

    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: "Picture was successfully created." }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pictures/1 or /pictures/1.json
  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: "Picture was successfully updated." }
        format.json { render :show, status: :ok, location: @picture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1 or /pictures/1.json
  def destroy
   
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: "Picture was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def picture_params
      params.require(:picture).permit(:picture_title, :picture_url, :image, :description, :non_fungible_token,:profile_id,:profile, :price)
    end
end
