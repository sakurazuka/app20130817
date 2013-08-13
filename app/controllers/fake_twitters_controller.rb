class FakeTwittersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_fake_twitter, only: [:show, :edit, :update, :destroy]

  # GET /fake_twitters
  # GET /fake_twitters.json
  def index
    @fake_twitters = FakeTwitter.all
  end

  # GET /fake_twitters/1
  # GET /fake_twitters/1.json
  def show
  end

  # GET /fake_twitters/new
  def new
    @fake_twitter = FakeTwitter.new
  end

  # GET /fake_twitters/1/edit
  def edit
  end

  # POST /fake_twitters
  # POST /fake_twitters.json
  def create
    @fake_twitter = FakeTwitter.new(fake_twitter_params)

    respond_to do |format|
      if @fake_twitter.save
        format.html { redirect_to @fake_twitter, notice: 'Fake twitter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fake_twitter }
      else
        format.html { render action: 'new' }
        format.json { render json: @fake_twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fake_twitters/1
  # PATCH/PUT /fake_twitters/1.json
  def update
    respond_to do |format|
      if @fake_twitter.update(fake_twitter_params)
        format.html { redirect_to @fake_twitter, notice: 'Fake twitter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fake_twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_twitters/1
  # DELETE /fake_twitters/1.json
  def destroy
    @fake_twitter.destroy
    respond_to do |format|
      format.html { redirect_to fake_twitters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fake_twitter
      @fake_twitter = FakeTwitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fake_twitter_params
      params.require(:fake_twitter).permit(:tweet)
    end
end
