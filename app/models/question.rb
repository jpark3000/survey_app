class Question < ActiveRecord::Base
  belongs_to :survey

  has_many :choices

  has_many :responses
  has_many :users, through: :responses
end
