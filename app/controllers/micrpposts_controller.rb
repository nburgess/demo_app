class MicrppostsController < ApplicationController
  # GET /micrpposts
  # GET /micrpposts.json
  def index
    @micrpposts = Micrppost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micrpposts }
    end
  end

  # GET /micrpposts/1
  # GET /micrpposts/1.json
  def show
    @micrppost = Micrppost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micrppost }
    end
  end

  # GET /micrpposts/new
  # GET /micrpposts/new.json
  def new
    @micrppost = Micrppost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micrppost }
    end
  end

  # GET /micrpposts/1/edit
  def edit
    @micrppost = Micrppost.find(params[:id])
  end

  # POST /micrpposts
  # POST /micrpposts.json
  def create
    @micrppost = Micrppost.new(params[:micrppost])

    respond_to do |format|
      if @micrppost.save
        format.html { redirect_to @micrppost, notice: 'Micrppost was successfully created.' }
        format.json { render json: @micrppost, status: :created, location: @micrppost }
      else
        format.html { render action: "new" }
        format.json { render json: @micrppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micrpposts/1
  # PUT /micrpposts/1.json
  def update
    @micrppost = Micrppost.find(params[:id])

    respond_to do |format|
      if @micrppost.update_attributes(params[:micrppost])
        format.html { redirect_to @micrppost, notice: 'Micrppost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micrppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micrpposts/1
  # DELETE /micrpposts/1.json
  def destroy
    @micrppost = Micrppost.find(params[:id])
    @micrppost.destroy

    respond_to do |format|
      format.html { redirect_to micrpposts_url }
      format.json { head :no_content }
    end
  end
end
