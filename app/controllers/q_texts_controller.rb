class QTextsController < ApplicationController
  before_action :set_q_text, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @q_texts = QText.all
    respond_with(@q_texts)
    
  end

  def show
    respond_with(@q_text)
  end

  def new
#    @quesiton = Question.find(params[:quesiton_id])
#    @q_text = @quesitn.q_texts.build
#    respond_with(@q_text)
    @q_text = QText.new
    @q_text.question_id = params[:question_id]


    redirect_to questions_path(@questions.id)
  end

  def edit
  end

  def create
    @questions = Question.find(params[:question_id])
    @q_text = @questions.q_text.create(q_text_params)
    redirect_to questions_path(@questions.id)
  end

  def update
    @q_text.update(q_text_params)
    respond_with(@q_text)
  end

  def destroy
    @q_text.destroy
    respond_with(@q_text)
  end

  private
    def set_q_text
      @q_text = QText.find(params[:id])
    end

    def q_text_params
      params.require(:q_text).permit(:number, :content, :check)
    end
end
