require "pry"

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/create' do
  erb :creation
end


LETTERS = {1 => "a", 2 => "b", 3 => "c", 4 => "d", 5 => "e", 6=>"f"}


post '/create_survey' do

  survey = Survey.create(name: params["title"])
  (params.keys.length - 2).times do |num|
    question = Question.create(content: params[(num + 1).to_s]["question"], key:(num +1))
    survey.questions << question
    (params[(num + 1).to_s].keys.length - 2).times do |key_num|
      question.choices << Choice.create(content: params[(num + 1).to_s][LETTERS[key_num+1]], key:LETTERS[key_num+1])
    end
  end

  survey.id.to_s
end

get '/survey/:survey_id' do
  @survey = Survey.find(params[:survey_id])

  erb :survey
end

post '/survey' do
  "asdfsdafsad"

  # user = User.find(session[:user_id])
  # user.choices << Choice.find(params[:choice_id])


end


