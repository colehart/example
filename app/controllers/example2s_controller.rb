class Example2sController < ApplicationController
  before_action :set_example2, only: [:show, :edit, :update, :destroy]

  # GET /example2s
  # GET /example2s.json
  def index
    @example2s = Example2.all
  end

  # GET /example2s/1
  # GET /example2s/1.json
  def show
  end

  # GET /example2s/new
  def new
    @example2 = Example2.new
  end

  # GET /example2s/1/edit
  def edit
  end

  # POST /example2s
  # POST /example2s.json
  def create
    @example2 = Example2.new(example2_params)

    respond_to do |format|
      if @example2.save
        format.html { redirect_to @example2, notice: 'Example2 was successfully created.' }
        format.json { render :show, status: :created, location: @example2 }
      else
        format.html { render :new }
        format.json { render json: @example2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example2s/1
  # PATCH/PUT /example2s/1.json
  def update
    respond_to do |format|
      if @example2.update(example2_params)
        format.html { redirect_to @example2, notice: 'Example2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @example2 }
      else
        format.html { render :edit }
        format.json { render json: @example2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example2s/1
  # DELETE /example2s/1.json
  def destroy
    @example2.destroy
    respond_to do |format|
      format.html { redirect_to example2s_url, notice: 'Example2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example2
      @example2 = Example2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example2_params
      params.require(:example2).permit(:name)
    end
end
