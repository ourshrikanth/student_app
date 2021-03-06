class SylabusesController < ApplicationController
  before_action :set_sylabus, only: [:show, :edit, :update, :destroy]
  layout "student"

  # GET /sylabuses
  # GET /sylabuses.json
  def index
    @course = Course.find(params[:course_id])
    @sylabuses = Sylabus.all
  end

  # GET /sylabuses/1
  # GET /sylabuses/1.json
  def show
  end

  # GET /sylabuses/new
  def new
    @course = Course.find(params[:course_id])
    @sylabus = @course.sylabuses.build
  end

  # GET /sylabuses/1/edit
  def edit
  end

  # POST /sylabuses
  # POST /sylabuses.json
  def create
    @course = Course.find(params[:course_id])
    @sylabus = Sylabus.new(sylabus_params)

    respond_to do |format|
      if @sylabus.save
        format.html { redirect_to course_sylabus_path(@course,@sylabus), notice: 'Sylabus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sylabus }
      else
        format.html { render action: 'new' }
        format.json { render json: @sylabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sylabuses/1
  # PATCH/PUT /sylabuses/1.json
  def update
    respond_to do |format|
      if @sylabus.update(sylabus_params)
        format.html { redirect_to @sylabus, notice: 'Sylabus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sylabus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sylabuses/1
  # DELETE /sylabuses/1.json
  def destroy
    @sylabus.destroy
    respond_to do |format|
      format.html { redirect_to course_sylabuses_path(@course)}
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sylabus
    @sylabus = Sylabus.find(params[:id])
    @course = Course.find(params[:course_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sylabus_params
    params.require(:sylabus).permit(:course_id, :name)
  end
end
