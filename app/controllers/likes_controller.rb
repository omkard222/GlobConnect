class LikesController < ApplicationController
    def index
      
    end

    def new
      @like = Like.new(like_params)
    end

    def create
      @like = Like.new(like_params)
      if @like.save
        ... do something happy
      else
        ... do something sad
      end
    end

    private

    def like_params
      params.require(:likes).permit(:user_id, :userdetail_id)
    end

  end
