class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :image, :country_id, :city, :content).merge(user_id: current_user.id)
  end
    
end
