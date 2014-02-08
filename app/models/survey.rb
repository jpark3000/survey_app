class Survey < ActiveRecord::Base
  belongs_to :creator, :class_name=> 'User', :foreign_key => 'creator_id'



  has_many :completions
  has_many :users, through: :completions




  has_many :questions
  has_many :choices, through: :questions
  has_many :responses, through: :choices





end




