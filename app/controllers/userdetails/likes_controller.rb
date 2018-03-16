class Userdetails::LikesController < ApplicationController
  before_action :authenticate_user!
   before_action :set_detail


  def create
    @userdetail.likes.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_to @userdetail }
      format.js
    end
  end

  def destroy
    @userdetail.likes.where(user_id: current_user.id).destroy_all

    respond_to do |format|
      format.html { redirect_to @userdetail }
      format.js
    end
  end

  private

    def set_detail
      @userdetail = Userdetail.find(params[:userdetail_id])
    end

end
