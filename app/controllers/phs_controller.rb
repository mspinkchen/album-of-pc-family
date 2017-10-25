class PhsController < ApplicationController
  before_action :set_ph, :only => [:show, :edit, :update, :destroy]

def index
  @phs = Ph.all
end
def new
  @ph = Ph.new
end

def create
  @ph = Ph.new(ph_params)
  if @ph.save
  redirect_to phs_url
else
  render :action => :new
end
end

def update
  if @ph.update_attributes(ph_params)
  redirect_to ph_path(@ph)
else
  render :action => :edit
end
end

def destroy
  @ph.destroy

  redirect_to phs_url
end

private

def set_ph
  @ph = Ph.find(params[:id])
end

def ph_params
  params.require(:ph).permit(:title, :date, :description, :file_location)
end
end
