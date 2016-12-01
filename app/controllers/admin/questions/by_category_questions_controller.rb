class Admin::Questions::ByCategoryQuestionsController < Admin::BaseController
  before_action :set_category, only: [:index, :show]
  before_action :set_question, only: :show

  def index
    @by_category_questions = Question.where(big_tag_id: params[:question_big_tag_id])
  end

  def show
    @middle_tags = @question.middle_tags
    @small_tags = @question.small_tags
  end

  private

  # 分野名
  def set_category
    @category = BigTag.find(params[:question_big_tag_id])
  end

  # 分野別◯✕正誤問題
  def set_question
    @question = Question.find(params[:id])
    @choices = @question.choices
    @index = params[:format]
  end

  # viewでindexを使用するためパラメーターを許可する
  def question_params
    params.require(:question).permit(:index)
  end
end
