class DiariesController < ApplicationController
  def index
    @diaries = Diary.order('created_at DESC')
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :image, :country_id, :city, :content).merge(user_id: current_user.id)
  end
    
end
