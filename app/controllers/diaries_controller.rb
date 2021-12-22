class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :show]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :contributor_confirmation, only: [:edit, :update, :destroy]

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
    if @diary.update(diary_params)
      redirect_to diary_path
    else
      render :edit
    end
  end

  def destroy
    @diary.destroy
    redirect_to root_path
  end

  private

  def diary_params
    params.require(:diary).permit(:title, :image, :country_id, :city, :content).merge(user_id: current_user.id)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end

  def contributor_confirmation
    @diary = Diary.find(params[:id])
    redirect_to root_path unless current_user == @diary.user
  end
end
