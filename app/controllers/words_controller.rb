class WordsController < ApplicationController
  before_action :set_word, only: [ :show, :edit, :update, :destroy ]
  def index
      @words = Word.all

      @q = Word.ransack(params[:q])
      @words = @q.result.order("title ASC")
  end

  def show
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to @word, notice: "Word was sucessefully created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @word.update(word_params)
      redirect_to @word, notice: "Word was sucessfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @word.destroy
    redirect_to root_path, notice: "Word was sucessfully deleted!"
  end

  private
  def set_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:title, :description)
  end
end
