class Web::OrganizePointsController < Web::BaseController
  def index
    @big_tags = BigTag.all
  end
end
