# bob = User.create(name: "bob", email: "bob@bob.bob", password_hash: "bob")
# pam = User.create(name: "pam", email: "pam@pam.pam", password_hash: "pam")

# q1_choices = %w{pizza hamburger milkshakes}
# q2_choices = %w{tennis football basketball}
# q3_choices = %w{reading sports brewing beer}
# q4_choices = %w{Renbrandt Picasso Bob_Ross}

# activity_q_names = ["What's your fav food?", "What's your fav sport?"]
# hobby_q_names = ["What are your hobbies?", "What's your favorite painter?"]

# activities_choices = [q1_choices, q2_choices]
# hobbies_choices = [q3_choices, q4_choices]




# activities = Survey.create(name: "Activities")
# activity_q_names.each_with_index do |q, i|
#   question = Question.create(content: q)
#   activities_choices[i].each do |choices|
#     question.choices << choices.map { |ch| Choice.create(name: ch) }
#   end
#   activities << question
# end

# hobbies = Survey.create(name: "Hobbies")
# hobby_q_names.each_with_index do |q, i|
#   question = Question.create(content: q)
#   hobbies_choices[i].each do |choices|
#     question.choices << choices.map { |ch| Choice.create(name: ch) }
#   end
#   hobbies << question
# end
