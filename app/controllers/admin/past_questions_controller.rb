class Admin::PastQuestionsController < Admin::BaseController
  before_action :set_past_question, only: :show

  def index
    @past_questions = PastQuestion.all
    @year_tags = YearTag.all
  end

  def per_year_index
    @past_questions = PastQuestion.where(year_tag_id: params[:id])
  end

  def show
  end

  private

  # 年度別過去問
  def set_past_question
    @past_question = PastQuestion.find(params[:id])
  end
end
