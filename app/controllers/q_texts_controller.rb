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
    @q_text = QText.new
    respond_with(@q_text)
  end

  def edit
  end

  def create
    @q_text = QText.new(q_text_params)
    @q_text.save
    respond_with(@q_text)
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
