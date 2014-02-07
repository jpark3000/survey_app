require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :completions
  has_many :surveys, through: :completions

  has_many :responses
  has_many :choices, through: :responses

  has_many :surveys_created, :class_name => 'Survey', :foreign_key => 'creator_id'


  validates :name, uniqueness: true, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


  def self.authenticate(email, password)
    @user = User.find_by_email(email)
    @user.password == password ? @user : false
  end

end
