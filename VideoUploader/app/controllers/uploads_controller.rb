class UploadsController < ApplicationController

  before_filter :find_posting
  before_filter :find_upload, :only => [:show, :edit, :update, :destroy]


  # GET /uploads
  # GET /uploads.json
  def index
    @uploads = Upload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uploads }
    end
  end

  # GET /uploads/1
  # GET /uploads/1.json
  def show
    @upload = Upload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @upload }
    end
  end

  # GET /uploads/new
  # GET /uploads/new.json
  def new
    @upload = @posting.uploads.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upload }
    end
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.json
  def create
    @upload = @posting.uploads.build(params[:upload])

    respond_to do |format|
      if @upload.save
        format.html { redirect_to [@posting, @upload], notice: 'Upload was successfully created.' }
      else
        flash[:alert] = "Upload has not been created."
        format.html { render action: "new"}
      end

    end
  end

  # PUT /uploads/1
  # PUT /uploads/1.json
  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to @upload, notice: 'Upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to uploads_url, message: "Ho Ho" }
      format.json { head :no_content }
    end
  end

  private

  def find_posting
    @posting = Posting.find(params[:posting_id])

  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The posting you were looking for could not be found."
    redirect_to postings_path
  end

  def find_upload
    @upload = @posting.uploads.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The upload you were looking for could not be found."
    redirect_to posting_uploads_path
  end
end
