class SoftwaresController < ApplicationController
  before_filter :authenticate_user!

  INDEX_SORT = SortIndex::Config.new(
    {'updated_at' => 'updated_at'},
    {'company' => 'company', 'version' => 'version', 'key' => 'key', 'platform' => 'platform', 'media_location' => 'media_location', 'asset_id' => 	'asset_id', 'installed' => 'installed', 'installed_by' => 'installed_by', 'modified' => 'modified', 'modified_by' => 'modified_by', 'note' => 'note'}
  )
  # GET /softwares
  # GET /softwares.xml
  def index
    @sortable = SortIndex::Sortable.new(params, INDEX_SORT)
    @softwares = Software.find(:all, :order => (params[:sort_by]  ||  "TRIM(LOWER(company))") + " " + (params[:sort_direction] || "asc")) 

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @softwares }
    end
  end

  # GET /softwares/1
  # GET /softwares/1.xml
  def show
    @software = Software.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @software }
    end
  end

  # GET /softwares/new
  # GET /softwares/new.xml
  def new
    @assets = Asset.all
    @software = Software.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @software }
    end
  end

  # GET /softwares/1/edit
  def edit
    @assets = Asset.all()
    @software = Software.find(params[:id])
  end

  # POST /softwares
  # POST /softwares.xml
  def create
    @software = Software.new(params[:software])
    @software.modified_by = current_user.name
    logger.debug @software

    respond_to do |format|
      if @software.save
        format.html { redirect_to(@software, :notice => 'Software was successfully created.') }
        format.xml  { render :xml => @software, :status => :created, :location => @software }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /softwares/1
  # PUT /softwares/1.xml
  def update
    @software = Software.find(params[:id])
    @software.modified_by = current_user.name

    respond_to do |format|
      if @software.update_attributes(params[:software])
        format.html { redirect_to(@software, :notice => 'Software was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @software.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /softwares/1
  # DELETE /softwares/1.xml
  def destroy
    @software = Software.find(params[:id])
    @software.destroy

    respond_to do |format|
      format.html { redirect_to(softwares_url) }
      format.xml  { head :ok }
    end
  end
end
