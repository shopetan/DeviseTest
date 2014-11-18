class QTextsController < ApplicationController
  before_action :set_q_text, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @question = Question.find(params[:question_id])
    @q_texts = @question.q_texts.all
    respond_with(@q_texts)
  end

  def show
    respond_with(@q_text)
  end

  def new
    @question = Question.find(params[:question_id])
    @q_text = @question.q_texts.new
    respond_with(@q_text)
  end

  def edit
  end

  def create
    @question = Question.find(params[:question_id])
    @q_text = @question.q_texts.create(q_text_params)
    redirect_to questions_path(@question.id)
  end

  def update
    @q_text.update(q_text_params)
    respond_with(@q_text)
  end

  def destroy
    @q_text.destroy
    respond_with @q_text
  end

  private
    def set_q_text
      @question = Question.find(params[:question_id])
      @q_text = @question.q_texts.all
    end

    def q_text_params
      params.require(:q_text).permit(:number, :content, :check)
    end
end
