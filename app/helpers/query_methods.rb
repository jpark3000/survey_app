helpers do

  # def return_all_responses(survey_id)
  #   Response.all.select { |response| response.choice.question.survey.id == survey_id }.to_a
  # end

  # def all_users_responses(user_id)
  #   Response.find_by_user_id(user_id).to_a
  # end

  # def all_responses(question_id)

  # end

  def elegance
    user = User.find(session[:user_id])

    survey = Survey.create(name: params["title"])
    (params.keys.length - 2).times do |num|
      question = Question.create(content: params[(num + 1).to_s]["question"], key:(num +1))
      survey.questions << question
      (params[(num + 1).to_s].keys.length - 2).times do |key_num|
        question.choices << Choice.create(content: params[(num + 1).to_s][LETTERS[key_num+1]], key:LETTERS[key_num+1])
      end
    end

    user.surveys_created << survey
    survey.id.to_s
  end


end
