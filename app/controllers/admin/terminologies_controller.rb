class Admin::TerminologiesController < Admin::BaseController
  def index
    @terminologies = Terminology.all
    @big_tags = BigTag.all
  end
end
