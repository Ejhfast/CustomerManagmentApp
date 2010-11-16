class UsereffectsController < ApplicationController
  # GET /usereffects
  # GET /usereffects.xml
  def index
    @usereffects = Usereffect.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usereffects }
    end
  end

  # GET /usereffects/1
  # GET /usereffects/1.xml
  def show
    @usereffect = Usereffect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usereffect }
    end
  end

  # GET /usereffects/new
  # GET /usereffects/new.xml
  def new
    @usereffect = Usereffect.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usereffect }
    end
  end

  # GET /usereffects/1/edit
  def edit
    @usereffect = Usereffect.find(params[:id])
  end

  # POST /usereffects
  # POST /usereffects.xml
  def create
    @usereffect = Usereffect.new(params[:usereffect])

    respond_to do |format|
      if @usereffect.save
        format.html { redirect_to(@usereffect, :notice => 'Usereffect was successfully created.') }
        format.xml  { render :xml => @usereffect, :status => :created, :location => @usereffect }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usereffect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usereffects/1
  # PUT /usereffects/1.xml
  def update
    @usereffect = Usereffect.find(params[:id])

    respond_to do |format|
      if @usereffect.update_attributes(params[:usereffect])
        format.html { redirect_to(@usereffect, :notice => 'Usereffect was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usereffect.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usereffects/1
  # DELETE /usereffects/1.xml
  def destroy
    @usereffect = Usereffect.find(params[:id])
    @usereffect.destroy

    respond_to do |format|
      format.html { redirect_to(usereffects_url) }
      format.xml  { head :ok }
    end
  end
end
