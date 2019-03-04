class HmtldemosController < ApplicationController
  before_action :set_hmtldemo, only: [:show, :edit, :update, :destroy]

  # GET /hmtldemos
  # GET /hmtldemos.json
  def index
    @hmtldemos = Hmtldemo.all
  end

  # GET /hmtldemos/1
  # GET /hmtldemos/1.json
  def show
  end

  # GET /hmtldemos/new
  def new
    @hmtldemo = Hmtldemo.new
  end

  # GET /hmtldemos/1/edit
  def edit
  end

  # POST /hmtldemos
  # POST /hmtldemos.json
  def create
    @hmtldemo = Hmtldemo.new(hmtldemo_params)

    respond_to do |format|
      if @hmtldemo.save
        format.html { redirect_to @hmtldemo, notice: 'Hmtldemo was successfully created.' }
        format.json { render :show, status: :created, location: @hmtldemo }
      else
        format.html { render :new }
        format.json { render json: @hmtldemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hmtldemos/1
  # PATCH/PUT /hmtldemos/1.json
  def update
    respond_to do |format|
      if @hmtldemo.update(hmtldemo_params)
        format.html { redirect_to @hmtldemo, notice: 'Hmtldemo was successfully updated.' }
        format.json { render :show, status: :ok, location: @hmtldemo }
      else
        format.html { render :edit }
        format.json { render json: @hmtldemo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hmtldemos/1
  # DELETE /hmtldemos/1.json
  def destroy
    @hmtldemo.destroy
    respond_to do |format|
      format.html { redirect_to hmtldemos_url, notice: 'Hmtldemo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hmtldemo
      @hmtldemo = Hmtldemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hmtldemo_params
      params.require(:hmtldemo).permit(:title, :body)
    end
end
