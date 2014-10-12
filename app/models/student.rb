class Student < ActiveRecord::Base
	
	has_many :student_courses
	has_many :courses, through: :student_courses

	has_many :student_quizzes
	has_many :quizzes, through: :student_quizzes

	has_many :student_responses
	has_many :choices, through: :student_responses

  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  attr_accessor :password
  before_save :encrypt_password

  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
