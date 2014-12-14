class JoiningsController < ApplicationController
  before_action :set_joining, only: [:show, :edit, :update, :destroy]

  # GET /joinings
  # GET /joinings.json
  def index
    @joinings = Joining.all
  end

  # GET /joinings/1
  # GET /joinings/1.json
  def show
  end

  # GET /joinings/new
  def new
    @joining = Joining.new
  end

  # GET /joinings/1/edit
  def edit
  end

  # POST /joinings
  # POST /joinings.json
  def create
    @joining = Joining.new(joining_params)

    respond_to do |format|
      if @joining.save
        format.html { redirect_to @joining, notice: 'Joining was successfully created.' }
        format.json { render :show, status: :created, location: @joining }
      else
        format.html { render :new }
        format.json { render json: @joining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joinings/1
  # PATCH/PUT /joinings/1.json
  def update
    respond_to do |format|
      if @joining.update(joining_params)
        format.html { redirect_to @joining, notice: 'Joining was successfully updated.' }
        format.json { render :show, status: :ok, location: @joining }
      else
        format.html { render :edit }
        format.json { render json: @joining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joinings/1
  # DELETE /joinings/1.json
  def destroy
    @joining.destroy
    respond_to do |format|
      format.html { redirect_to joinings_url, notice: 'Joining was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joining
      @joining = Joining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joining_params
      params.require(:joining).permit(:joined_at, :reason, :user_id, :group_id, :created_at, :updated_at)
    end
end
