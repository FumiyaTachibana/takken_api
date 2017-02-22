class Web::OrganizePoints::CivilCodesController < Web::BaseController
  def index
    #@middle_tags = MiddleTag.where(big_tag_id: 1)
    @middle_tags = MiddleTag.all
    #binding.pry
  end
end
