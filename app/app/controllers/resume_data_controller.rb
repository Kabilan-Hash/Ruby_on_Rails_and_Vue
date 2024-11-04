class ResumeDataController < ApplicationController
  before_action :set_resume_datum, only: %i[ show edit update destroy ]
  def index
    @resume_data = ResumeDatum.all
  end

  def show
  end


  def new
    @resume_datum = ResumeDatum.new
  end


  def edit
  end

  def create
    @resume_datum = ResumeDatum.new(resume_datum_params)
    a=@resume_datum.name
    # @document = Poppler::Document.new(@resume_datum.files)
    # @document.map { |page| page.get_text }.join
    respond_to do |format|
      if @resume_datum.save
        format.html { redirect_to @resume_datum, notice: "Resume "+a +" was successfully created." }
        format.json { render :show, status: :created, location: @resume_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resume_datum.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @resume_datum.update(resume_datum_params)
        format.html { redirect_to @resume_datum, notice: "Resume data was successfully updated." }
        format.json { render :show, status: :ok, location: @resume_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resume_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    a=@resume_datum.name
    @resume_datum.destroy!

    respond_to do |format|
      format.html { redirect_to resume_data_path, status: :see_other, notice: "Resume "+a+" was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
   
    def set_resume_datum
      @resume_datum = ResumeDatum.find(params[:id])
    end

    def resume_datum_params
      params.require(:resume_datum).permit(:name, files: [])
    end
end
