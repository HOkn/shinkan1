class CommentsController < ApplicationController

  def create
    @user = current_user
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user_id = @user.id
    if @answer.save
      redirect_to question_path(@question)
    else
      redirect_to question_path(@question)
    end
  end
end