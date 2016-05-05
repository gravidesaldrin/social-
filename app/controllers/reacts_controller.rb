class ReactsController < ApplicationController
  def create
    @react = React.new react_params
    if @react.save
      redirect_to root_path
    else
      render :new
    end
  end
  private
  def react_params
    params.require(:react).permit :id, :content, :positive, :user_id, :post_id
  end
end
