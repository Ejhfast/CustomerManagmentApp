class AccountactionsController < ApplicationController
  # GET /accountactions
  # GET /accountactions.xml
  def index
    @accountactions = Accountaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @accountactions }
    end
  end

  # GET /accountactions/1
  # GET /accountactions/1.xml
  def show
    @accountaction = Accountaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @accountaction }
    end
  end

  # GET /accountactions/new
  # GET /accountactions/new.xml
  def new
    @accountaction = Accountaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @accountaction }
    end

  end

  # GET /accountactions/1/edit
  def edit
    @accountaction = Accountaction.find(params[:id])
  end

  # POST /accountactions
  # POST /accountactions.xml
  def create
    @accountaction = Accountaction.new(params[:accountaction])

    respond_to do |format|
      if @accountaction.save
        format.html { redirect_to( account_path(current_account_id), :notice => 'Accountaction was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /accountactions/1
  # PUT /accountactions/1.xml
  def update
    @accountaction = Accountaction.find(params[:id])

    respond_to do |format|
      if @accountaction.update_attributes(params[:accountaction])
        format.html { redirect_to(@accountaction, :notice => 'Accountaction was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @accountaction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accountactions/1
  # DELETE /accountactions/1.xml
  def destroy
    @accountaction = Accountaction.find(params[:id])
    @accountaction.destroy

    respond_to do |format|
      format.html { redirect_to(accountactions_url) }
      format.xml  { head :ok }
    end
  end
end
