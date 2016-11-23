class Web::TerminologiesController < Web::BaseController
  before_action :set_terminology, only: :show

  def index
    @terminologies = Terminology.all

    ## TODO あかさたな昇順にソートして、検索しやすいようにする
    # @terminologies = Terminology.where(big_tag_id: params[:id])
  end

  def show
  end

  private

  # 年度別過去問
  def set_terminology
    @terminology = Terminology.find(params[:id])
  end
end
