class AuthorizelogsController < ApplicationController
  before_action :set_authorizelog, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index]
      # If have no exceptions, will force login on opening app

  # GET /authorizelogs
  # GET /authorizelogs.json
  def index
    @authorizelogs = Authorizelog.all
  end

  # GET /authorizelogs/1
  # GET /authorizelogs/1.json
  def show
  end

  # GET /authorizelogs/new
  def new
    @authorizelog = Authorizelog.new
  end

  # GET /authorizelogs/1/edit
  def edit
  end

  # POST /authorizelogs
  # POST /authorizelogs.json
  def create
    @authorizelog = Authorizelog.new(authorizelog_params)

    respond_to do |format|
      if @authorizelog.save
        format.html { redirect_to @authorizelog, notice: 'Authorizelog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @authorizelog }
      else
        format.html { render action: 'new' }
        format.json { render json: @authorizelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorizelogs/1
  # PATCH/PUT /authorizelogs/1.json
  def update
    respond_to do |format|
      if @authorizelog.update(authorizelog_params)
        format.html { redirect_to @authorizelog, notice: 'Authorizelog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @authorizelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorizelogs/1
  # DELETE /authorizelogs/1.json
  def destroy
    @authorizelog.destroy
    respond_to do |format|
      format.html { redirect_to authorizelogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorizelog
      @authorizelog = Authorizelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authorizelog_params
      params.require(:authorizelog).permit(:title, :body)
    end
end
