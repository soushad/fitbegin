class FitnewsController < ApplicationController
  before_action :set_fitnews, only: [:show, :edit, :update, :destroy]

  # GET /fitnews
  # GET /fitnews.json
  def index
    @fitnews = Fitnews.all
  end

  # GET /fitnews/1
  # GET /fitnews/1.json
  def show
  end

  # GET /fitnews/new
  def new
    @fitnews = Fitnews.new
  end

  # GET /fitnews/1/edit
  def edit
  end

  # POST /fitnews
  # POST /fitnews.json
  def create
    @fitnews = Fitnews.new(fitnews_params)

    respond_to do |format|
      if @fitnews.save
        format.html { redirect_to @fitnews, notice: 'Fitnews was successfully created.' }
        format.json { render :show, status: :created, location: @fitnews }
      else
        format.html { render :new }
        format.json { render json: @fitnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fitnews/1
  # PATCH/PUT /fitnews/1.json
  def update
    respond_to do |format|
      if @fitnews.update(fitnews_params)
        format.html { redirect_to @fitnews, notice: 'Fitnews was successfully updated.' }
        format.json { render :show, status: :ok, location: @fitnews }
      else
        format.html { render :edit }
        format.json { render json: @fitnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitnews/1
  # DELETE /fitnews/1.json
  def destroy
    @fitnews.destroy
    respond_to do |format|
      format.html { redirect_to fitnews_index_url, notice: 'Fitnews was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fitnews
      @fitnews = Fitnews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fitnews_params
      params.require(:fitnews).permit(:title, :content, :is_public)
    end
end
