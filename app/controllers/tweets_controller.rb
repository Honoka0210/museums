class TweetsController < ApplicationController

    
   before_action :authenticate_user!, only: [:new, :create]

    def index
        @tweets = Tweet.all
        if params[:search] == nil
          @tweets_tags = params[:tag_id].present? ? Tag.find(params[:tag_id]).tweets : Tweet.all
        elsif params[:search] == ''
          @tweets = params[:tag_id].present? ? Tag.find(params[:tag_id]).tweets : Tweet.all
        else

          @tweets = Tweet.where("title LIKE ? OR place LIKE ? OR about LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
        end 


    end

 def new
    @tweets = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)

     tweet.user_id = current_user.id 
    if tweet.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

 


 
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end



  private
  def tweet_params
    params.require(:tweet).permit(:title, :place, :about,:image,:tag_ids)
  end





end
