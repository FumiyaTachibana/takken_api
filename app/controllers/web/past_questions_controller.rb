class Web::PastQuestionsController < Web::BaseController
  before_action :set_year_tag, only: :show

  def index
    @big_tags = BigTag.all
    @big_tag_names = @big_tags.pluck(:name)

    @past_questions = PastQuestion.all
    @year_tags = YearTag.all
  end

  def show
  end

  private

  # 年度別過去問
  def set_year_tag
    @year_tag = YearTag.find(params[:id])
    @past_questions = PastQuestion.where(year_tag_id: params[:id])
  end

  # TODO 分野別の対策を行う
  # 分野別過去問
  #def set_big_tag
  #  @big_tag = BigTag.find(params[:id])
  #  @past_questions = PastQuestion.where(big_tag_id: params[:id])
  #end
end
