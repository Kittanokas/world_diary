class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :show]
  before_action :authenticate_user!, except: [:show, :index]

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

  def edit
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diary_path
    else
      render :edit
    end
  end

  private
  def diary_params
    params.require(:diary).permit(:title, :image, :country_id, :city, :content).merge(user_id: current_user.id)
  end
  
  def set_diary
    @diary = Diary.find(params[:id])
  end

end
