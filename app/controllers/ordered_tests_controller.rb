class OrderedTestsController < ApplicationController
  before_action :set_ordered_test, only: [:show, :edit, :update, :destroy]

  # GET /ordered_tests
  # GET /ordered_tests.json
  def index
    @ordered_tests = OrderedTest.all
  end

  # GET /ordered_tests/1
  # GET /ordered_tests/1.json
  def show
  end

  # GET /ordered_tests/new
  def new
    @ordered_test = OrderedTest.new
  end

  # GET /ordered_tests/1/edit
  def edit
  end

  # POST /ordered_tests
  # POST /ordered_tests.json
  def create
    @ordered_test = OrderedTest.new(ordered_test_params)

    respond_to do |format|
      if @ordered_test.save
        format.html { redirect_to @ordered_test, notice: 'Ordered test was successfully created.' }
        format.json { render :show, status: :created, location: @ordered_test }
      else
        format.html { render :new }
        format.json { render json: @ordered_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordered_tests/1
  # PATCH/PUT /ordered_tests/1.json
  def update
    respond_to do |format|
      if @ordered_test.update(ordered_test_params)
        format.html { redirect_to @ordered_test, notice: 'Ordered test was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordered_test }
      else
        format.html { render :edit }
        format.json { render json: @ordered_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordered_tests/1
  # DELETE /ordered_tests/1.json
  def destroy
    @ordered_test.destroy
    respond_to do |format|
      format.html { redirect_to ordered_tests_url, notice: 'Ordered test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordered_test
      @ordered_test = OrderedTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordered_test_params
      params.require(:ordered_test).permit(:patient_id)
    end
end
