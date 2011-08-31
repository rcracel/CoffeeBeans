class CoffeeBeansController < ApplicationController
  # GET /coffee_beans
  # GET /coffee_beans.xml
  def index
    @coffee_beans = CoffeeBean.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coffee_beans }
      format.json { render :json => @coffee_beans }
    end
  end

  # GET /coffee_beans/1
  # GET /coffee_beans/1.xml
  def show
    @coffee_bean = CoffeeBean.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coffee_bean }
      format.json { render :json => @coffee_bean }
    end
  end

  # GET /coffee_beans/new
  # GET /coffee_beans/new.xml
  def new
    @coffee_bean = CoffeeBean.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coffee_bean }
      format.json { render :json => @coffee_bean }
    end
  end

  # GET /coffee_beans/1/edit
  def edit
    @coffee_bean = CoffeeBean.find(params[:id])
  end

  # POST /coffee_beans
  # POST /coffee_beans.xml
  def create
    @coffee_bean = CoffeeBean.new(params[:coffee_bean])

    respond_to do |format|
      if @coffee_bean.save
        format.html { redirect_to(@coffee_bean, :notice => 'Coffee bean was successfully created.') }
        format.xml  { render :xml => @coffee_bean, :status => :created, :location => @coffee_bean }
        format.json { render :json => @coffee_bean, :status => :created, :location => @coffee_bean }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coffee_bean.errors, :status => :unprocessable_entity }
        format.json { render :json => @coffee_bean.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coffee_beans/1
  # PUT /coffee_beans/1.xml
  def update
    @coffee_bean = CoffeeBean.find(params[:id])

    respond_to do |format|
      if @coffee_bean.update_attributes(params[:coffee_bean])
        format.html { redirect_to(@coffee_bean, :notice => 'Coffee bean was successfully updated.') }
        format.xml  { head :ok }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coffee_bean.errors, :status => :unprocessable_entity }
        format.json { render :json => @coffee_bean.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_beans/1
  # DELETE /coffee_beans/1.xml
  def destroy
    @coffee_bean = CoffeeBean.find(params[:id])
    @coffee_bean.destroy

    respond_to do |format|
      format.html { redirect_to(coffee_beans_url) }
      format.xml  { head :ok }
      format.json { head :ok }
    end
  end
end
