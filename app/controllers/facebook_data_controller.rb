class FacebookDataController < ApplicationController
  # GET /facebook_data
  # GET /facebook_data.json
  def index
    @facebook_data = FacebookDatum.all
    @dates = ""
    @facebook_data.each do |facebook_datum|
      @dates = @dates + facebook_datum.start_date.mday().to_s + " al " + facebook_datum.end_date.mday().to_s + " de " + facebook_datum.end_date.strftime('%B') + ","
    end
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facebook_data }
    end
  end

  # GET /facebook_data/1
  # GET /facebook_data/1.json
  def show
    @facebook_datum = FacebookDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facebook_datum }
    end
  end

  # GET /facebook_data/new
  # GET /facebook_data/new.json
  def new
    @facebook_datum = FacebookDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facebook_datum }
    end
  end

  # GET /facebook_data/1/edit
  def edit
    @facebook_datum = FacebookDatum.find(params[:id])
  end

  # POST /facebook_data
  # POST /facebook_data.json
  def create
    @facebook_datum = FacebookDatum.new(params[:facebook_datum])

    respond_to do |format|
      if @facebook_datum.save
        format.html { redirect_to @facebook_datum, notice: 'Facebook datum was successfully created.' }
        format.json { render json: @facebook_datum, status: :created, location: @facebook_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @facebook_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facebook_data/1
  # PUT /facebook_data/1.json
  def update
    @facebook_datum = FacebookDatum.find(params[:id])

    respond_to do |format|
      if @facebook_datum.update_attributes(params[:facebook_datum])
        format.html { redirect_to @facebook_datum, notice: 'Facebook datum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @facebook_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facebook_data/1
  # DELETE /facebook_data/1.json
  def destroy
    @facebook_datum = FacebookDatum.find(params[:id])
    @facebook_datum.destroy

    respond_to do |format|
      format.html { redirect_to facebook_data_url }
      format.json { head :ok }
    end
  end
end
