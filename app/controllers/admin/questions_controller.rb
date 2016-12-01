class Admin::QuestionsController < Admin::BaseController
  def index
    @questions = Question.all
    @big_tags = BigTag.all
  end
end
