class AttractionsdbsController < ApplicationController
  before_action :set_attractionsdb, only: [:show, :edit, :update, :destroy]

  # GET /attractionsdbs
  # GET /attractionsdbs.json
  def index
    @attractionsdbs = Attractionsdb.all
  end

  # GET /attractionsdbs/1
  # GET /attractionsdbs/1.json
  def show
  end

  # GET /attractionsdbs/new
  def new
    @attractionsdb = Attractionsdb.new
  end

  # GET /attractionsdbs/1/edit
  def edit
  end

  # POST /attractionsdbs
  # POST /attractionsdbs.json
  def create
    @attractionsdb = Attractionsdb.new(attractionsdb_params)

    respond_to do |format|
      if @attractionsdb.save
        format.html { redirect_to @attractionsdb, notice: 'Attractionsdb was successfully created.' }
        format.json { render :show, status: :created, location: @attractionsdb }
      else
        format.html { render :new }
        format.json { render json: @attractionsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attractionsdbs/1
  # PATCH/PUT /attractionsdbs/1.json
  def update
    respond_to do |format|
      if @attractionsdb.update(attractionsdb_params)
        format.html { redirect_to @attractionsdb, notice: 'Attractionsdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @attractionsdb }
      else
        format.html { render :edit }
        format.json { render json: @attractionsdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attractionsdbs/1
  # DELETE /attractionsdbs/1.json
  def destroy
    @attractionsdb.destroy
    respond_to do |format|
      format.html { redirect_to attractionsdbs_url, notice: 'Attractionsdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attractionsdb
      @attractionsdb = Attractionsdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attractionsdb_params
      params.require(:attractionsdb).permit(:name, :description, :rating, :entry, :web)
    end
end
