class Admin::PastQuestions::ByYearPastQuestionsController < Admin::BaseController
  before_action :set_year_tag, only: [:index, :show]
  before_action :set_past_question, only: :show

  def index
    @by_year_past_questions = PastQuestion.where(year_tag_id: params[:past_question_year_tag_id])
  end

  def show
    @middle_tags = @past_question.middle_tags
    @small_tags = @past_question.small_tags
  end

  private

  # 年度
  def set_year_tag
    @year_tag = YearTag.find(params[:past_question_year_tag_id])
  end

  # 過去問
  def set_past_question
    @past_question = PastQuestion.find(params[:id])
    @choices = @past_question.choices
    @index = params[:format]
  end

  # viewでindexを使用するためパラメーターを許可する
  def past_question_params
    params.require(:past_question).permit(:index)
  end
end
