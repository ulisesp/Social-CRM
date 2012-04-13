class SocialNetworksController < ApplicationController
  # GET /social_networks
  # GET /social_networks.json
  def index
    @social_networks = SocialNetwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @social_networks }
    end
  end

  # GET /social_networks/1
  # GET /social_networks/1.json
  def show
    @social_network = SocialNetwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @social_network }
    end
  end

  # GET /social_networks/new
  # GET /social_networks/new.json
  def new
    @social_network = SocialNetwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @social_network }
    end
  end

  # GET /social_networks/1/edit
  def edit
    @social_network = SocialNetwork.find(params[:id])
  end

  # POST /social_networks
  # POST /social_networks.json
  def create
    @social_network = SocialNetwork.new(params[:social_network])

    respond_to do |format|
      if @social_network.save
        format.html { redirect_to @social_network, notice: 'Social network was successfully created.' }
        format.json { render json: @social_network, status: :created, location: @social_network }
      else
        format.html { render action: "new" }
        format.json { render json: @social_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /social_networks/1
  # PUT /social_networks/1.json
  def update
    @social_network = SocialNetwork.find(params[:id])

    respond_to do |format|
      if @social_network.update_attributes(params[:social_network])
        format.html { redirect_to @social_network, notice: 'Social network was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @social_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_networks/1
  # DELETE /social_networks/1.json
  def destroy
    @social_network = SocialNetwork.find(params[:id])
    @social_network.destroy

    respond_to do |format|
      format.html { redirect_to social_networks_url }
      format.json { head :ok }
    end
  end
end
