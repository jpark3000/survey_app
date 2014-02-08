class Survey < ActiveRecord::Base
  belongs_to :creator, :class_name=> 'User', :foreign_key => 'creator_id'



  has_many :completions
  has_many :users, through: :completions

  has_many :responses
  has_many :users, through: :responses


  has_many :questions

  def self.numbers(id)
    Survey

  end


end
