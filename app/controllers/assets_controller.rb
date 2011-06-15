class AssetsController < ApplicationController
  before_filter :authenticate_user!

  INDEX_SORT = SortIndex::Config.new(
    {'updated_at' => 'updated_at'},
    {'tag' => 'tag', 'name' => 'name', 'make' => 'make', 'model' => 'model', 'serial' => 'serial', 'category' => 'category', 
      'warranty' => 'warranty', 'location' => 'location', 'assigned' => 'assigned', 'status' => 'status', 'updated' => 'updated'}
  )
  # GET /assets
  # GET /assets.xml
  def index
    @sortable = SortIndex::Sortable.new(params, INDEX_SORT)
    @assets = Asset.find(:all, :order => (params[:sort_by]  ||  "TRIM(LOWER(tag))") + " " + (params[:sort_direction] || "asc"))
   # @assets.sort! {|x,y| x.tag.to_i <=> y.tag.to_i }

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assets }
    end
  end

  # GET /assets/1
  # GET /assets/1.xml
  def show
    @asset = Asset.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  # GET /assets/new
  # GET /assets/new.xml
  def new
    @asset = Asset.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  # GET /assets/1/edit
  def edit
    @asset = Asset.find(params[:id])
  end

  # POST /assets
  # POST /assets.xml
  def create
    @asset = Asset.new(params[:asset])

    respond_to do |format|
      if @asset.save
        format.html { redirect_to(@asset, :notice => 'Asset was successfully created.') }
        format.xml  { render :xml => @asset, :status => :created, :location => @asset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assets/1
  # PUT /assets/1.xml
  def update
    @asset = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        format.html { redirect_to(@asset, :notice => 'Asset was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.xml
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to(assets_url) }
      format.xml  { head :ok }
    end
  end
end
