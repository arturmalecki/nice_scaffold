class <%= controller_class_name %>Controller < ApplicationController
  def index
    @<%= controller_name %> = <%= model_class_name %>.all
  end

  def show
    @<%= model_name %> = <%= model_class_name %>.find(params[:id])
  end

  def new
    @<%= model_name %> = <%= model_class_name %>.new
  end

  def create
    @<%= model_name %> = <%= model_class_name %>.new(params[:<%= model_name %>])
    @<%= model_name %>.save!
    redirect_to(<%= controller_name %>_path)
  rescue ActiveRecord::RecordInvalid
    render(:action => :new)
  end

  def edit
    @<%= model_name %> = <%= model_class_name %>.find(params[:id])
  end

  def update
    @<%= model_name %> = <%= model_class_name %>.find(params[:id])
    @<%= model_name %>.update_attributes(params[:<%= model_name %>])
    redirect_to(<%= controller_name %>_path)
  rescue ActiveRecord::RecordInvalid
    render(:action => :edit)
  end

  def destroy
    @<%= model_name %> = <%= model_class_name %>.find(params[:id])
    @<%= model_name %>.destroy
    redirect_to(<%= controller_name %>_path)
  end
end
