class Example1sController < ApplicationController
  before_action :set_example1, only: [:show, :edit, :update, :destroy]

  # GET /example1s
  # GET /example1s.json
  def index
    @example1s = Example1.all
  end

  # GET /example1s/1
  # GET /example1s/1.json
  def show
  end

  # GET /example1s/new
  def new
    @example1 = Example1.new
  end

  # GET /example1s/1/edit
  def edit
  end

  # POST /example1s
  # POST /example1s.json
  def create
    @example1 = Example1.new(example1_params)

    respond_to do |format|
      if @example1.save
        format.html { redirect_to @example1, notice: 'Example1 was successfully created.' }
        format.json { render :show, status: :created, location: @example1 }
      else
        format.html { render :new }
        format.json { render json: @example1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example1s/1
  # PATCH/PUT /example1s/1.json
  def update
    respond_to do |format|
      if @example1.update(example1_params)
        format.html { redirect_to @example1, notice: 'Example1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @example1 }
      else
        format.html { render :edit }
        format.json { render json: @example1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example1s/1
  # DELETE /example1s/1.json
  def destroy
    @example1.destroy
    respond_to do |format|
      format.html { redirect_to example1s_url, notice: 'Example1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example1
      @example1 = Example1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example1_params
      params.require(:example1).permit(:name, :description, :age)
    end
end
