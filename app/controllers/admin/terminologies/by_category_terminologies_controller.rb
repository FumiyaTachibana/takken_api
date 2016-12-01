class Admin::Terminologies::ByCategoryTerminologiesController < Admin::BaseController
  before_action :set_terminology, only: :show

  def index
    @by_category_terminologies = Terminology.where(big_tag_id: params[:terminology_big_tag_id])
    @category_name = BigTag.find(params[:terminology_big_tag_id]).name
  end

  def show
  end

  private

  # 年度別過去問
  def set_terminology
    @terminology = Terminology.find(params[:id])
  end
end
